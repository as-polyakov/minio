/*
 * MinIO Cloud Storage, (C) 2020 MinIO, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package heal

import (
	"fmt"
	"strconv"
	"time"

	"github.com/as-polyakov/minio/cmd/config"
	"github.com/as-polyakov/minio/pkg/env"
)

// Compression environment variables
const (
	Bitrot  = "bitrotscan"
	Sleep   = "max_sleep"
	IOCount = "max_io"

	EnvBitrot  = "MINIO_HEAL_BITROTSCAN"
	EnvSleep   = "MINIO_HEAL_MAX_SLEEP"
	EnvIOCount = "MINIO_HEAL_MAX_IO"
)

// Config represents the heal settings.
type Config struct {
	// Bitrot will perform bitrot scan on local disk when checking objects.
	Bitrot bool `json:"bitrotscan"`
	// maximum sleep duration between objects to slow down heal operation.
	Sleep   time.Duration `json:"sleep"`
	IOCount int           `json:"iocount"`
}

var (
	// DefaultKVS - default KV config for heal settings
	DefaultKVS = config.KVS{
		config.KV{
			Key:   Bitrot,
			Value: config.EnableOff,
		},
		config.KV{
			Key:   Sleep,
			Value: "1s",
		},
		config.KV{
			Key:   IOCount,
			Value: "10",
		},
	}

	// Help provides help for config values
	Help = config.HelpKVS{
		config.HelpKV{
			Key:         Bitrot,
			Description: `perform bitrot scan on disks when checking objects during crawl`,
			Optional:    true,
			Type:        "on|off",
		},
		config.HelpKV{
			Key:         Sleep,
			Description: `maximum sleep duration between objects to slow down heal operation. eg. 2s`,
			Optional:    true,
			Type:        "duration",
		},
		config.HelpKV{
			Key:         IOCount,
			Description: `maximum IO requests allowed between objects to slow down heal operation. eg. 3`,
			Optional:    true,
			Type:        "int",
		},
	}
)

// LookupConfig - lookup config and override with valid environment settings if any.
func LookupConfig(kvs config.KVS) (cfg Config, err error) {
	if err = config.CheckValidKeys(config.HealSubSys, kvs, DefaultKVS); err != nil {
		return cfg, err
	}
	cfg.Bitrot, err = config.ParseBool(env.Get(EnvBitrot, kvs.Get(Bitrot)))
	if err != nil {
		return cfg, fmt.Errorf("'heal:bitrotscan' value invalid: %w", err)
	}
	cfg.Sleep, err = time.ParseDuration(env.Get(EnvSleep, kvs.Get(Sleep)))
	if err != nil {
		return cfg, fmt.Errorf("'heal:max_sleep' value invalid: %w", err)
	}
	cfg.IOCount, err = strconv.Atoi(env.Get(EnvIOCount, kvs.Get(IOCount)))
	if err != nil {
		return cfg, fmt.Errorf("'heal:max_io' value invalid: %w", err)
	}
	return cfg, nil
}

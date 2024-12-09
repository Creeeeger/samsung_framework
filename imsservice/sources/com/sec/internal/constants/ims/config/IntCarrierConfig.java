package com.sec.internal.constants.ims.config;

import android.os.PersistableBundle;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.sec.internal.interfaces.ims.config.ICarrierConfig;
import java.util.Optional;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public enum IntCarrierConfig implements ICarrierConfig {
    WIFI_OFF_DEFERRING_TIME("wifi_off_deferring_time_millis_int", "ims.wifi_off_deferring_time_millis_int"),
    NON_RCS_CAPABILITIES_CACHE_EXPIRATION("non_rcs_capabilities_cache_expiration_sec_int", "ims.non_rcs_capabilities_cache_expiration_sec_int");

    private final String mCarrierConfigName;
    private final String mGlobalSettingsName;

    IntCarrierConfig(String str, String str2) {
        this.mGlobalSettingsName = str;
        this.mCarrierConfigName = str2;
    }

    public String getGlobalSettingsName() {
        return this.mGlobalSettingsName;
    }

    @Override // com.sec.internal.interfaces.ims.config.ICarrierConfig
    public void putOverrideConfig(final PersistableBundle persistableBundle, JsonObject jsonObject) {
        Optional.ofNullable(jsonObject.get(this.mGlobalSettingsName)).ifPresent(new Consumer() { // from class: com.sec.internal.constants.ims.config.IntCarrierConfig$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                IntCarrierConfig.this.lambda$putOverrideConfig$0(persistableBundle, (JsonElement) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putOverrideConfig$0(PersistableBundle persistableBundle, JsonElement jsonElement) {
        persistableBundle.putInt(this.mCarrierConfigName, jsonElement.getAsInt());
    }
}

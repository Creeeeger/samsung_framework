package com.sec.internal.constants.ims.config;

import android.os.PersistableBundle;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.sec.internal.interfaces.ims.config.ICarrierConfig;
import java.util.Optional;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public enum LongCarrierConfig implements ICarrierConfig {
    RCS_REQUEST_RETRY_INTERVAL("rcs_request_retry_interval_millis_long", "ims.rcs_request_retry_interval_millis_long");

    private final String mCarrierConfigName;
    private final String mGlobalSettingsName;

    LongCarrierConfig(String str, String str2) {
        this.mGlobalSettingsName = str;
        this.mCarrierConfigName = str2;
    }

    public String getGlobalSettingsName() {
        return this.mGlobalSettingsName;
    }

    @Override // com.sec.internal.interfaces.ims.config.ICarrierConfig
    public void putOverrideConfig(final PersistableBundle persistableBundle, JsonObject jsonObject) {
        Optional.ofNullable(jsonObject.get(this.mGlobalSettingsName)).ifPresent(new Consumer() { // from class: com.sec.internal.constants.ims.config.LongCarrierConfig$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                LongCarrierConfig.this.lambda$putOverrideConfig$0(persistableBundle, (JsonElement) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putOverrideConfig$0(PersistableBundle persistableBundle, JsonElement jsonElement) {
        persistableBundle.putLong(this.mCarrierConfigName, jsonElement.getAsLong());
    }
}

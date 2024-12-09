package com.sec.internal.constants.ims.config;

import android.os.PersistableBundle;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.sec.internal.interfaces.ims.config.ICarrierConfig;
import com.sec.internal.log.IMSLog;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.stream.StreamSupport;

/* loaded from: classes.dex */
public enum StringArrayCarrierConfig implements ICarrierConfig {
    PUBLISH_SERVICE_DESC_FEATURE_TAG_MAP_OVERRIDE("publish_service_desc_feature_tag_map_override_string_array", "ims.publish_service_desc_feature_tag_map_override_string_array"),
    RCS_FEATURE_TAG_ALLOWED("rcs_feature_tag_allowed_string_array", "ims.rcs_feature_tag_allowed_string_array");

    private static final String LOG_TAG = StringArrayCarrierConfig.class.getSimpleName();
    private final String mCarrierConfigName;
    private final String mGlobalSettingsName;

    StringArrayCarrierConfig(String str, String str2) {
        this.mGlobalSettingsName = str;
        this.mCarrierConfigName = str2;
    }

    public String getGlobalSettingsName() {
        return this.mGlobalSettingsName;
    }

    @Override // com.sec.internal.interfaces.ims.config.ICarrierConfig
    public void putOverrideConfig(final PersistableBundle persistableBundle, JsonObject jsonObject) {
        Optional.ofNullable(jsonObject.get(this.mGlobalSettingsName)).ifPresent(new Consumer() { // from class: com.sec.internal.constants.ims.config.StringArrayCarrierConfig$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                StringArrayCarrierConfig.this.lambda$putOverrideConfig$1(persistableBundle, (JsonElement) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putOverrideConfig$1(PersistableBundle persistableBundle, JsonElement jsonElement) {
        try {
            persistableBundle.putStringArray(this.mCarrierConfigName, (String[]) StreamSupport.stream(jsonElement.getAsJsonArray().spliterator(), false).map(new StringArrayCarrierConfig$$ExternalSyntheticLambda0()).toArray(new IntFunction() { // from class: com.sec.internal.constants.ims.config.StringArrayCarrierConfig$$ExternalSyntheticLambda1
                @Override // java.util.function.IntFunction
                public final Object apply(int i) {
                    String[] lambda$putOverrideConfig$0;
                    lambda$putOverrideConfig$0 = StringArrayCarrierConfig.lambda$putOverrideConfig$0(i);
                    return lambda$putOverrideConfig$0;
                }
            }));
        } catch (IllegalStateException e) {
            IMSLog.e(LOG_TAG, "putOverrideConfig: " + e + " => " + jsonElement);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$putOverrideConfig$0(int i) {
        return new String[i];
    }
}

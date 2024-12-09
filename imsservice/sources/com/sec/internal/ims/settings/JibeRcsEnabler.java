package com.sec.internal.ims.settings;

import android.content.Context;
import android.content.res.Resources;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonReader;
import com.sec.imsservice.R;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.config.StringArrayCarrierConfig$$ExternalSyntheticLambda0;
import com.sec.internal.helper.SimUtil$$ExternalSyntheticLambda0;
import com.sec.internal.helper.os.PackageUtils;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.interfaces.ims.core.ISequentialInitializable;
import com.sec.internal.log.IMSLog;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Objects;
import java.util.Optional;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

/* loaded from: classes.dex */
public class JibeRcsEnabler implements ISequentialInitializable {
    private static final String JSON_KEY_GLOBALSETTING = "globalsetting";
    private static final String JSON_KEY_GLOBALSETTINGS_UPDATE = "globalsettings_update";
    private static final String JSON_KEY_IMSPROFILE_UPDATE = "imsprofile_update";
    private static final String JSON_KEY_MNONAME = "mnoname";
    private static final String JSON_KEY_PROFILE = "profile";
    private static final String LOG_TAG = "JibeRcsEnabler";
    private static JsonElement sJibeUpdates;
    protected static final ReentrantReadWriteLock sJibeUpdatesLock = new ReentrantReadWriteLock();
    protected final Context mContext;
    protected boolean mHasPrivilegedSamsungMessage;

    public JibeRcsEnabler(Context context) {
        this.mContext = context;
        this.mHasPrivilegedSamsungMessage = PackageUtils.hasPrivilegedPackage(context, ImsConstants.Packages.PACKAGE_SEC_MSG);
    }

    void setJibeUpdates(JsonElement jsonElement) {
        sJibeUpdates = jsonElement;
    }

    JsonElement getJibeUpdates() {
        return sJibeUpdates;
    }

    JsonElement getJibeUpdatesLocked() {
        try {
            ReentrantReadWriteLock reentrantReadWriteLock = sJibeUpdatesLock;
            reentrantReadWriteLock.readLock().lock();
            JsonElement jsonElement = (JsonElement) Optional.ofNullable(sJibeUpdates).orElse(JsonNull.INSTANCE);
            reentrantReadWriteLock.readLock().unlock();
            return jsonElement;
        } catch (Throwable th) {
            sJibeUpdatesLock.readLock().unlock();
            throw th;
        }
    }

    protected JsonElement getUpdates() {
        if (this.mHasPrivilegedSamsungMessage) {
            return JsonNull.INSTANCE;
        }
        fetchJibeUpdatesIfNecessary();
        boolean isSecDmaPackageInuse = ConfigUtil.isSecDmaPackageInuse(this.mContext, 0);
        IMSLog.i(LOG_TAG, "getUpdates: DMA is SamsungMessage: " + isSecDmaPackageInuse);
        return isSecDmaPackageInuse ? getJibeUpdatesLocked() : JsonNull.INSTANCE;
    }

    private synchronized void fetchJibeUpdatesIfNecessary() {
        if (sJibeUpdates == null) {
            IMSLog.i(LOG_TAG, "fetchJibeUpdatesIfNecessary: Fetch Jibe updates now.");
            ReentrantReadWriteLock reentrantReadWriteLock = sJibeUpdatesLock;
            reentrantReadWriteLock.writeLock().lock();
            sJibeUpdates = fetchJibeUpdates();
            reentrantReadWriteLock.writeLock().unlock();
        } else {
            IMSLog.i(LOG_TAG, "fetchJibeUpdatesIfNecessary: Use fetched updates.");
        }
    }

    private JsonElement fetchJibeUpdates() {
        final JsonObject jsonObject = new JsonObject();
        Optional.ofNullable(loadJibeResource(R.raw.jibe_imsprofile)).map(new JibeRcsEnabler$$ExternalSyntheticLambda0()).map(new Function() { // from class: com.sec.internal.ims.settings.JibeRcsEnabler$$ExternalSyntheticLambda4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                JsonElement lambda$fetchJibeUpdates$0;
                lambda$fetchJibeUpdates$0 = JibeRcsEnabler.lambda$fetchJibeUpdates$0((JsonObject) obj);
                return lambda$fetchJibeUpdates$0;
            }
        }).ifPresent(new Consumer() { // from class: com.sec.internal.ims.settings.JibeRcsEnabler$$ExternalSyntheticLambda5
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                JibeRcsEnabler.lambda$fetchJibeUpdates$1(jsonObject, (JsonElement) obj);
            }
        });
        Optional.ofNullable(loadJibeResource(R.raw.jibe_globalsettings)).map(new JibeRcsEnabler$$ExternalSyntheticLambda0()).map(new Function() { // from class: com.sec.internal.ims.settings.JibeRcsEnabler$$ExternalSyntheticLambda6
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                JsonElement lambda$fetchJibeUpdates$2;
                lambda$fetchJibeUpdates$2 = JibeRcsEnabler.lambda$fetchJibeUpdates$2((JsonObject) obj);
                return lambda$fetchJibeUpdates$2;
            }
        }).ifPresent(new Consumer() { // from class: com.sec.internal.ims.settings.JibeRcsEnabler$$ExternalSyntheticLambda7
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                JibeRcsEnabler.lambda$fetchJibeUpdates$3(jsonObject, (JsonElement) obj);
            }
        });
        return jsonObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JsonElement lambda$fetchJibeUpdates$0(JsonObject jsonObject) {
        return jsonObject.get("imsprofile_update");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$fetchJibeUpdates$1(JsonObject jsonObject, JsonElement jsonElement) {
        IMSLog.i(LOG_TAG, "init: profile size: " + jsonElement.getAsJsonObject().size());
        jsonObject.add("imsprofile_update", jsonElement);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JsonElement lambda$fetchJibeUpdates$2(JsonObject jsonObject) {
        return jsonObject.get("globalsettings_update");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$fetchJibeUpdates$3(JsonObject jsonObject, JsonElement jsonElement) {
        IMSLog.i(LOG_TAG, "init: globalsettings size: " + jsonElement.getAsJsonObject().size());
        jsonObject.add("globalsettings_update", jsonElement);
    }

    @Override // com.sec.internal.interfaces.ims.core.ISequentialInitializable
    public void initSequentially() {
        fetchJibeUpdatesIfNecessary();
    }

    private JsonElement loadJibeResource(int i) {
        Resources resources = this.mContext.getResources();
        IMSLog.i(LOG_TAG, "loadJibeUpdates: " + resources.getResourceName(i));
        try {
            JsonReader jsonReader = new JsonReader(new BufferedReader(new InputStreamReader(resources.openRawResource(i))));
            try {
                JsonElement jsonElement = (JsonElement) Optional.ofNullable(new JsonParser().parse(jsonReader)).orElse(JsonNull.INSTANCE);
                jsonReader.close();
                return jsonElement;
            } catch (Throwable th) {
                try {
                    jsonReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException | JsonIOException | JsonSyntaxException e) {
            IMSLog.e(LOG_TAG, "loadJibeUpdates: " + e);
            return JsonNull.INSTANCE;
        }
    }

    protected boolean isDynamicJibeSupported(int i) {
        return !this.mHasPrivilegedSamsungMessage && hasJibeUpdatesForSim(i);
    }

    private boolean hasJibeUpdatesForSim(int i) {
        String str = (String) Optional.ofNullable(SimManagerFactory.getSimManagerFromSimSlot(i)).map(new SimUtil$$ExternalSyntheticLambda0()).orElse(Mno.DEFAULT.getName());
        return hasJibeImsProfileUpdate(str) || hasJibeGlobalSettingUpdate(str);
    }

    private boolean hasJibeImsProfileUpdate(final String str) {
        try {
            return ((Boolean) Optional.ofNullable(getJibeUpdatesLocked().getAsJsonObject().get("imsprofile_update")).map(new JibeRcsEnabler$$ExternalSyntheticLambda0()).map(new Function() { // from class: com.sec.internal.ims.settings.JibeRcsEnabler$$ExternalSyntheticLambda9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    JsonElement lambda$hasJibeImsProfileUpdate$4;
                    lambda$hasJibeImsProfileUpdate$4 = JibeRcsEnabler.lambda$hasJibeImsProfileUpdate$4((JsonObject) obj);
                    return lambda$hasJibeImsProfileUpdate$4;
                }
            }).map(new JibeRcsEnabler$$ExternalSyntheticLambda2()).map(new Function() { // from class: com.sec.internal.ims.settings.JibeRcsEnabler$$ExternalSyntheticLambda10
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Boolean lambda$hasJibeImsProfileUpdate$5;
                    lambda$hasJibeImsProfileUpdate$5 = JibeRcsEnabler.this.lambda$hasJibeImsProfileUpdate$5(str, (JsonArray) obj);
                    return lambda$hasJibeImsProfileUpdate$5;
                }
            }).orElse(Boolean.FALSE)).booleanValue();
        } catch (IllegalStateException e) {
            IMSLog.e(LOG_TAG, "hasJibeImsProfileUpdate failed! " + e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JsonElement lambda$hasJibeImsProfileUpdate$4(JsonObject jsonObject) {
        return jsonObject.get("profile");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$hasJibeImsProfileUpdate$5(String str, JsonArray jsonArray) {
        return Boolean.valueOf(hasMatchedUpdate(jsonArray, str));
    }

    private boolean hasJibeGlobalSettingUpdate(final String str) {
        try {
            return ((Boolean) Optional.ofNullable(getJibeUpdatesLocked().getAsJsonObject().get("globalsettings_update")).map(new JibeRcsEnabler$$ExternalSyntheticLambda0()).map(new Function() { // from class: com.sec.internal.ims.settings.JibeRcsEnabler$$ExternalSyntheticLambda1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    JsonElement lambda$hasJibeGlobalSettingUpdate$6;
                    lambda$hasJibeGlobalSettingUpdate$6 = JibeRcsEnabler.lambda$hasJibeGlobalSettingUpdate$6((JsonObject) obj);
                    return lambda$hasJibeGlobalSettingUpdate$6;
                }
            }).map(new JibeRcsEnabler$$ExternalSyntheticLambda2()).map(new Function() { // from class: com.sec.internal.ims.settings.JibeRcsEnabler$$ExternalSyntheticLambda3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Boolean lambda$hasJibeGlobalSettingUpdate$7;
                    lambda$hasJibeGlobalSettingUpdate$7 = JibeRcsEnabler.this.lambda$hasJibeGlobalSettingUpdate$7(str, (JsonArray) obj);
                    return lambda$hasJibeGlobalSettingUpdate$7;
                }
            }).orElse(Boolean.FALSE)).booleanValue();
        } catch (IllegalStateException e) {
            IMSLog.e(LOG_TAG, "hasJibeGlobalSettingUpdate failed! " + e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JsonElement lambda$hasJibeGlobalSettingUpdate$6(JsonObject jsonObject) {
        return jsonObject.get("globalsetting");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$hasJibeGlobalSettingUpdate$7(String str, JsonArray jsonArray) {
        return Boolean.valueOf(hasMatchedUpdate(jsonArray, str));
    }

    private boolean hasMatchedUpdate(JsonArray jsonArray, String str) {
        Stream map = StreamSupport.stream(jsonArray.spliterator(), true).map(new JibeRcsEnabler$$ExternalSyntheticLambda0()).map(new Function() { // from class: com.sec.internal.ims.settings.JibeRcsEnabler$$ExternalSyntheticLambda8
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                JsonElement lambda$hasMatchedUpdate$8;
                lambda$hasMatchedUpdate$8 = JibeRcsEnabler.lambda$hasMatchedUpdate$8((JsonObject) obj);
                return lambda$hasMatchedUpdate$8;
            }
        }).map(new StringArrayCarrierConfig$$ExternalSyntheticLambda0());
        Objects.requireNonNull(str);
        return map.anyMatch(new DeviceConfigManager$$ExternalSyntheticLambda1(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JsonElement lambda$hasMatchedUpdate$8(JsonObject jsonObject) {
        return jsonObject.get("mnoname");
    }
}

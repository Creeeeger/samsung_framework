package com.sec.internal.ims.aec;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.aec.AECNamespace;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.os.IntentUtil;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class AECResult {
    private AtomicBoolean[] mAkaTokenReady = {new AtomicBoolean(false), new AtomicBoolean(false)};
    private final Context mContext;

    public AECResult(Context context) {
        this.mContext = context;
    }

    public static void sendTryRegister(Context context, int i) {
        if (DmConfigHelper.getImsUserSetting(context, ImsConstants.SystemSettings.VOLTE_SLOT1.getName(), i) == 0 && ImsRegistry.isReady()) {
            ImsRegistry.getRegistrationManager().requestTryRegister(i);
        }
    }

    public static void sendDeRegister(Context context, int i) {
        if (DmConfigHelper.getImsUserSetting(context, ImsConstants.SystemSettings.VOLTE_SLOT1.getName(), i) == 0 && ImsRegistry.isReady()) {
            ImsRegistry.getRegistrationManager().sendDeregister(144, i);
        }
    }

    public static void handleUtSwitch(int i, boolean z) {
        IUtServiceModule utServiceModule = ImsRegistry.getServiceModuleManager().getUtServiceModule();
        if (utServiceModule != null) {
            utServiceModule.enableUt(i, z);
        }
    }

    protected void handleVoiceCallType(int i, int i2) {
        if (i == 1) {
            ImsConstants.SystemSettings.setVoiceCallType(this.mContext, 0, i2);
            return;
        }
        int voiceCallType = ImsConstants.SystemSettings.getVoiceCallType(this.mContext, -1, i2);
        if (voiceCallType == -1) {
            ImsConstants.SystemSettings.setVoiceCallType(this.mContext, 0, i2);
        } else {
            ImsConstants.SystemSettings.setVoiceCallType(this.mContext, voiceCallType, i2);
        }
    }

    protected void handleCompletedEntitlementVoLTE(Message message) {
        int i = ((Bundle) message.obj).getInt(AECNamespace.BundleData.VOLTE_AUTO_ON, 0);
        int i2 = ((Bundle) message.obj).getInt(AECNamespace.BundleData.VOLTE_ENTITLEMENT_STATUS, 0);
        if (((Bundle) message.obj).getInt("version", 0) >= 0 && i2 == 1) {
            handleVoiceCallType(i, message.arg1);
            handleUtSwitch(message.arg1, true);
            sendTryRegister(this.mContext, message.arg1);
        } else {
            handleUtSwitch(message.arg1, false);
            sendDeRegister(this.mContext, message.arg1);
        }
    }

    protected void handleCompletedEntitlementVoWIFI(Message message) {
        final Bundle bundle = (Bundle) message.obj;
        if (bundle != null) {
            Arrays.asList(AECNamespace.Packages.UNIFIED_WFC, "com.sec.epdg", this.mContext.getPackageName()).forEach(new Consumer() { // from class: com.sec.internal.ims.aec.AECResult$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    AECResult.this.lambda$handleCompletedEntitlementVoWIFI$0(bundle, (String) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleCompletedEntitlementVoWIFI$0(Bundle bundle, String str) {
        Intent intent = new Intent(AECNamespace.Action.COMPLETED_ENTITLEMENT);
        intent.putExtra("phoneId", bundle.getInt("phoneId"));
        intent.putExtra("version", bundle.getInt("version"));
        intent.putExtra(AECNamespace.BundleData.HTTP_RESPONSE, bundle.getInt(AECNamespace.BundleData.HTTP_RESPONSE));
        intent.putExtra(AECNamespace.BundleData.VOWIFI_AUTO_ON, bundle.getInt(AECNamespace.BundleData.VOWIFI_AUTO_ON));
        intent.putExtra(AECNamespace.BundleData.VOWIFI_ACTIVATION_MODE, bundle.getInt(AECNamespace.BundleData.VOWIFI_ACTIVATION_MODE));
        intent.putExtra(AECNamespace.BundleData.VOWFIFI_SERVICEFLOW_URL, bundle.getString(AECNamespace.BundleData.VOWFIFI_SERVICEFLOW_URL));
        intent.putExtra(AECNamespace.BundleData.VOWFIFI_SERVICEFLOW_USERDATA, bundle.getString(AECNamespace.BundleData.VOWFIFI_SERVICEFLOW_USERDATA));
        intent.putExtra(AECNamespace.BundleData.VOWIFI_MESSAGE_FOR_INCOMPATIBLE, bundle.getString(AECNamespace.BundleData.VOWIFI_MESSAGE_FOR_INCOMPATIBLE));
        intent.setPackage(str);
        IntentUtil.sendBroadcast(this.mContext, intent);
    }

    protected boolean getAkaTokenReady(int i) {
        return this.mAkaTokenReady[i].get();
    }

    protected void setAkaTokenReady(int i, boolean z) {
        this.mAkaTokenReady[i].set(z);
    }

    protected void updateAkaToken(int i, int i2) {
        if (getAkaTokenReady(i)) {
            setAkaTokenReady(i, false);
            Intent intent = new Intent("com.samsung.nsds.action.AKA_TOKEN_RETRIEVED");
            intent.putExtra(NSDSNamespaces.NSDSExtras.REQUEST_STATUS, i2 == 200);
            intent.setPackage("com.samsung.android.geargplugin");
            this.mContext.sendBroadcast(intent, "com.sec.imsservice.permission.RECEIVE_AKA_TOKEN");
        }
    }
}

package com.sec.internal.ims.cmstore.ambs;

import android.os.Handler;
import android.os.Looper;
import com.sec.ims.ImsRegistration;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.ims.os.NetworkEvent;
import com.sec.internal.ims.gba.GbaServiceModule;
import com.sec.internal.ims.servicemodules.tapi.service.api.interfaces.ITapiServiceManager;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.cmstore.ICmsModule;
import com.sec.internal.interfaces.ims.core.IRegisterTask;
import com.sec.internal.interfaces.ims.gba.IGbaServiceModule;
import com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager;
import com.sec.internal.interfaces.ims.servicemodules.csh.IImageShareModule;
import com.sec.internal.interfaces.ims.servicemodules.csh.IVideoShareModule;
import com.sec.internal.interfaces.ims.servicemodules.euc.IEucModule;
import com.sec.internal.interfaces.ims.servicemodules.gls.IGlsModule;
import com.sec.internal.interfaces.ims.servicemodules.im.IImModule;
import com.sec.internal.interfaces.ims.servicemodules.openapi.IImsStatusServiceModule;
import com.sec.internal.interfaces.ims.servicemodules.openapi.IOpenApiServiceModule;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityDiscoveryModule;
import com.sec.internal.interfaces.ims.servicemodules.options.IOptionsModule;
import com.sec.internal.interfaces.ims.servicemodules.presence.IPresenceModule;
import com.sec.internal.interfaces.ims.servicemodules.quantumencryption.IQuantumEncryptionServiceModule;
import com.sec.internal.interfaces.ims.servicemodules.session.ISessionModule;
import com.sec.internal.interfaces.ims.servicemodules.sms.ISmsServiceModule;
import com.sec.internal.interfaces.ims.servicemodules.ss.IUtServiceModule;
import com.sec.internal.interfaces.ims.servicemodules.volte2.IVolteServiceModule;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class CmsServiceModuleManager extends Handler implements IServiceModuleManager {
    private static final String TAG = CmsServiceModuleManager.class.getSimpleName();
    private static IServiceModuleManager mCmsModuleManager = null;
    GbaServiceModule mGbaServiceModule;
    IImsFramework mImsFramework;

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void checkRcsServiceModules(List<IRegisterTask> list, int i) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void cleanUpModules() {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void forceCallOnServiceSwitched(int i) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public ICapabilityDiscoveryModule getCapabilityDiscoveryModule() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public ICmsModule getCmsModule() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IEucModule getEucModule() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IGlsModule getGlsModule() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IImModule getImModule() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IImageShareModule getImageShareModule() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IImsStatusServiceModule getImsStatusServiceModule() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IOpenApiServiceModule getOpenApiServiceModule() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IOptionsModule getOptionsModule() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IPresenceModule getPresenceModule() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IQuantumEncryptionServiceModule getQuantumEncryptionServiceModule() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public Handler getServiceModuleHandler(String str) {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public ISessionModule getSessionModule() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public ISmsServiceModule getSmsServiceModule() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public ITapiServiceManager getTapiServiceManager() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IUtServiceModule getUtServiceModule() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IVideoShareModule getVideoShareModule() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IVolteServiceModule getVolteServiceModule() {
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.core.ISequentialInitializable
    public void initSequentially() {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public boolean isLooperExist() {
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void notifyAutoConfigDone(int i) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void notifyConfigured(boolean z, int i) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void notifyDeregistering(ImsRegistration imsRegistration) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void notifyImsRegistration(ImsRegistration imsRegistration, boolean z, int i) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void notifyImsSwitchUpdateToApp() {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void notifyNetworkChanged(NetworkEvent networkEvent, int i) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void notifyOmadmVolteConfigDone(int i) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void notifyRcsDeregistering(Set<String> set, ImsRegistration imsRegistration) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void notifyReRegistering(int i, Set<String> set) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void notifySimChange(int i) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void onImsSwitchUpdated(int i) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void serviceStartDeterminer(List<ImsProfile> list, int i) {
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public void updateCapabilities(int i) {
    }

    public static IServiceModuleManager getInstance(IImsFramework iImsFramework, GbaServiceModule gbaServiceModule) {
        if (mCmsModuleManager == null) {
            mCmsModuleManager = new CmsServiceModuleManager(iImsFramework, gbaServiceModule);
        }
        return mCmsModuleManager;
    }

    CmsServiceModuleManager(IImsFramework iImsFramework, GbaServiceModule gbaServiceModule) {
        super(Looper.myLooper());
        this.mImsFramework = iImsFramework;
        this.mGbaServiceModule = gbaServiceModule;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager
    public IGbaServiceModule getGbaServiceModule() {
        return this.mGbaServiceModule;
    }
}

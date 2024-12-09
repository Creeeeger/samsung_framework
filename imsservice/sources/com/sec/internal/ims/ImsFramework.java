package com.sec.internal.ims;

import android.content.ContentValues;
import android.content.Context;
import android.os.Binder;
import android.os.Message;
import android.os.RemoteException;
import com.sec.ims.IImsRegistrationListener;
import com.sec.ims.ImsRegistration;
import com.sec.internal.ims.fcm.interfaces.IFcmHandler;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.base.ServiceModuleBase;
import com.sec.internal.imsphone.cmc.ICmcConnectivityController;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.aec.IAECModule;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.core.ICmcAccountManager;
import com.sec.internal.interfaces.ims.core.IGeolocationController;
import com.sec.internal.interfaces.ims.core.INtpTimeController;
import com.sec.internal.interfaces.ims.core.IPdnController;
import com.sec.internal.interfaces.ims.core.IRawSipSender;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.IWfcEpdgManager;
import com.sec.internal.interfaces.ims.core.handler.IHandlerFactory;
import com.sec.internal.interfaces.ims.core.iil.IIilManager;
import com.sec.internal.interfaces.ims.core.imslogger.IImsDiagMonitor;
import com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager;
import com.sec.internal.interfaces.ims.servicemodules.IServiceModuleManager;
import java.util.List;

/* loaded from: classes.dex */
public class ImsFramework implements IImsFramework {
    private IImsFramework mImsFramework;

    public ImsFramework(IImsFramework iImsFramework) {
        this.mImsFramework = iImsFramework;
        ImsRegistry.init(this);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IPdnController getPdnController() {
        return this.mImsFramework.getPdnController();
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public ICmcAccountManager getCmcAccountManager() {
        return this.mImsFramework.getCmcAccountManager();
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IRcsPolicyManager getRcsPolicyManager() {
        return this.mImsFramework.getRcsPolicyManager();
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IRegistrationManager getRegistrationManager() {
        return this.mImsFramework.getRegistrationManager();
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IConfigModule getConfigModule() {
        return this.mImsFramework.getConfigModule();
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IHandlerFactory getHandlerFactory() {
        return this.mImsFramework.getHandlerFactory();
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IAECModule getAECModule() {
        return this.mImsFramework.getAECModule();
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public ICmcConnectivityController getCmcConnectivityController() {
        return this.mImsFramework.getCmcConnectivityController();
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IGeolocationController getGeolocationController() {
        return this.mImsFramework.getGeolocationController();
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public INtpTimeController getNtpTimeController() {
        return this.mImsFramework.getNtpTimeController();
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IImsDiagMonitor getImsDiagMonitor() {
        return this.mImsFramework.getImsDiagMonitor();
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IFcmHandler getFcmHandler() {
        return this.mImsFramework.getFcmHandler();
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IIilManager getIilManager(int i) {
        return this.mImsFramework.getIilManager(i);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IWfcEpdgManager getWfcEpdgManager() {
        return this.mImsFramework.getWfcEpdgManager();
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public List<ServiceModuleBase> getAllServiceModules() {
        return this.mImsFramework.getAllServiceModules();
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IServiceModuleManager getServiceModuleManager() {
        return this.mImsFramework.getServiceModuleManager();
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public IRawSipSender getRawSipSender() {
        return this.mImsFramework.getRawSipSender();
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public Context getContext() {
        return this.mImsFramework.getContext();
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public String registerImsRegistrationListener(IImsRegistrationListener iImsRegistrationListener, boolean z, int i) {
        return this.mImsFramework.registerImsRegistrationListener(iImsRegistrationListener, z, i);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public String getString(int i, String str, String str2) {
        return this.mImsFramework.getString(i, str, str2);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public String[] getStringArray(int i, String str, String[] strArr) {
        return this.mImsFramework.getStringArray(i, str, null);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public int getInt(int i, String str, int i2) {
        return this.mImsFramework.getInt(i, str, i2);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public boolean getBoolean(int i, String str, boolean z) {
        return this.mImsFramework.getBoolean(i, str, z);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public ContentValues getConfigValues(String[] strArr, int i) {
        return this.mImsFramework.getConfigValues(strArr, i);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public boolean isServiceAvailable(String str, int i, int i2) throws RemoteException {
        return this.mImsFramework.isServiceAvailable(str, i, i2);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void setRttMode(int i, int i2) {
        this.mImsFramework.setRttMode(i, i2);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void registerImsRegistrationListener(IImsRegistrationListener iImsRegistrationListener) throws RemoteException {
        this.mImsFramework.registerImsRegistrationListener(iImsRegistrationListener);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void unregisterImsRegistrationListener(IImsRegistrationListener iImsRegistrationListener) throws RemoteException {
        this.mImsFramework.unregisterImsRegistrationListener(iImsRegistrationListener);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public ImsRegistration[] getRegistrationInfoByPhoneId(int i) throws RemoteException {
        return this.mImsFramework.getRegistrationInfoByPhoneId(i);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public int getNetworkType(int i) {
        return this.mImsFramework.getNetworkType(i);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public boolean isRcsEnabledByPhoneId(int i) {
        return this.mImsFramework.isRcsEnabledByPhoneId(i);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void startAutoConfig(boolean z, Message message) {
        this.mImsFramework.startAutoConfig(z, message);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public Binder getBinder(String str) {
        return this.mImsFramework.getBinder(str);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public Binder getBinder(String str, String str2) {
        return this.mImsFramework.getBinder(str, str2);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public String getRcsProfileType(int i) throws RemoteException {
        return this.mImsFramework.getRcsProfileType(i);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void enableRcsByPhoneId(boolean z, int i) throws RemoteException {
        this.mImsFramework.enableRcsByPhoneId(z, i);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public boolean isServiceEnabledByPhoneId(String str, int i) throws RemoteException {
        return this.mImsFramework.isServiceEnabledByPhoneId(str, i);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void triggerAutoConfigurationForApp(int i) throws RemoteException {
        this.mImsFramework.triggerAutoConfigurationForApp(i);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public boolean isDefaultDmValue(String str, int i) {
        return this.mImsFramework.isDefaultDmValue(str, i);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public boolean setDefaultDmValue(String str, int i) {
        return this.mImsFramework.setDefaultDmValue(str, i);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public int[] getCallCount(int i) throws RemoteException {
        return this.mImsFramework.getCallCount(i);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void notifyImsReady(boolean z, int i) {
        this.mImsFramework.notifyImsReady(z, i);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void sendDeregister(int i, int i2) {
        this.mImsFramework.sendDeregister(i, i2);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void suspendRegister(boolean z, int i) {
        this.mImsFramework.suspendRegister(z, i);
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public void setIsimLoaded() {
        this.mImsFramework.setIsimLoaded();
    }

    @Override // com.sec.internal.interfaces.ims.IImsFramework
    public boolean isCrossSimCallingSupportedByPhoneId(int i) {
        return this.mImsFramework.isCrossSimCallingSupportedByPhoneId(i);
    }
}

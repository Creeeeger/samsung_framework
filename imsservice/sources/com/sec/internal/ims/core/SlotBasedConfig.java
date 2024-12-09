package com.sec.internal.ims.core;

import android.content.Context;
import android.os.RemoteCallbackList;
import android.text.TextUtils;
import android.util.ArraySet;
import com.sec.ims.IImsRegistrationListener;
import com.sec.ims.ISimMobilityStatusListener;
import com.sec.ims.ImsRegistration;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.constants.ims.os.NetworkEvent;
import com.sec.internal.ims.core.RegistrationManager;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class SlotBasedConfig {
    private static final HashMap<Integer, SlotBasedConfig> sInstances = new HashMap<>();
    private String mBlockedServicesForCrossSim;
    private boolean mCdmaAvailableForVoice;
    private RemoteCallbackList<IImsRegistrationListener> mCmcRegistrationListeners;
    private boolean mDataUsageExceeded;
    private int mHoEnable;
    private ImsIconManager mIconManager;
    private boolean mInviteRejected;
    private NetworkEvent mNetworkEvent;
    private boolean mNotifiedImsNotAvailable;
    private int mNrSaMode;
    private RegistrationManager.OmadmConfigState mOmadmState;
    private int mOnlyEpsFallback;
    private boolean mRTTMode;
    private RemoteCallbackList<IImsRegistrationListener> mRegistrationListeners;
    private boolean mSSACPolicy;
    private boolean mSimMobilityActivation;
    private boolean mSimMobilityActivationForRcs;
    private boolean mSuspendRegiWhileIrat;
    private boolean mTTYMode;
    private boolean mUnprocessedOmadmConfig;
    private List<ImsProfile> mProfileList = new CopyOnWriteArrayList();
    private Map<Integer, ImsProfile> mProfileListExt = new ConcurrentHashMap();
    private Map<Integer, ImsRegistration> mRegistrationList = new ConcurrentHashMap();
    private RegisterTaskList mRegistrationTasks = new RegisterTaskList();
    private RegistrationConstants.RegistrationType mRcsVolteSingleRegistration = RegistrationConstants.RegistrationType.IMS_PROFILE_BASED_REG;
    private RemoteCallbackList<ISimMobilityStatusListener> mSimMobilityStatusListeners = new RemoteCallbackList<>();

    private SlotBasedConfig() {
        clear();
    }

    public static SlotBasedConfig getInstance(int i) {
        HashMap<Integer, SlotBasedConfig> hashMap = sInstances;
        synchronized (hashMap) {
            if (hashMap.containsKey(Integer.valueOf(i))) {
                return hashMap.get(Integer.valueOf(i));
            }
            SlotBasedConfig slotBasedConfig = new SlotBasedConfig();
            hashMap.put(Integer.valueOf(i), slotBasedConfig);
            return slotBasedConfig;
        }
    }

    public void clear() {
        ImsIconManager imsIconManager = this.mIconManager;
        if (imsIconManager != null) {
            imsIconManager.updateRegistrationIcon();
        }
        this.mProfileList.clear();
        this.mProfileListExt.clear();
        this.mRegistrationList.clear();
        this.mRegistrationTasks.clear();
        this.mRcsVolteSingleRegistration = RegistrationConstants.RegistrationType.IMS_PROFILE_BASED_REG;
        this.mTTYMode = false;
        this.mRTTMode = false;
        this.mInviteRejected = false;
        this.mCdmaAvailableForVoice = false;
        this.mSimMobilityActivation = false;
        this.mSimMobilityActivationForRcs = false;
        this.mSSACPolicy = true;
        this.mSuspendRegiWhileIrat = false;
        this.mDataUsageExceeded = false;
        this.mNotifiedImsNotAvailable = false;
        this.mOmadmState = RegistrationManager.OmadmConfigState.IDLE;
        this.mUnprocessedOmadmConfig = false;
        this.mHoEnable = -1;
        this.mOnlyEpsFallback = -1;
        this.mNrSaMode = -1;
        this.mNetworkEvent = new NetworkEvent();
        this.mBlockedServicesForCrossSim = "";
    }

    void setIconManager(ImsIconManager imsIconManager) {
        this.mIconManager = imsIconManager;
    }

    public ImsIconManager getIconManager() {
        return this.mIconManager;
    }

    void createIconManager(Context context, IRegistrationManager iRegistrationManager, PdnController pdnController, Mno mno, int i) {
        this.mIconManager = new ImsIconManager(context, iRegistrationManager, pdnController, mno, i);
    }

    void createIconManager(ImsIconManager imsIconManager) {
        this.mIconManager = imsIconManager;
    }

    void clearProfiles() {
        this.mProfileList.clear();
    }

    public List<ImsProfile> getProfiles() {
        return new ArrayList(this.mProfileList);
    }

    void addProfile(ImsProfile imsProfile) {
        this.mProfileList.add(imsProfile);
    }

    Map<Integer, ImsProfile> getExtendedProfiles() {
        return this.mProfileListExt;
    }

    void addExtendedProfile(int i, ImsProfile imsProfile) {
        this.mProfileListExt.put(Integer.valueOf(i), imsProfile);
    }

    void removeExtendedProfile(int i) {
        this.mProfileListExt.remove(Integer.valueOf(i));
    }

    void setBlockedServicesForCrossSim(String str) {
        this.mBlockedServicesForCrossSim = str;
    }

    public Set<String> getBlockedServicesForCrossSim() {
        ArraySet arraySet = new ArraySet();
        if (!TextUtils.isEmpty(this.mBlockedServicesForCrossSim)) {
            arraySet.addAll(Arrays.asList(this.mBlockedServicesForCrossSim.split(",", 0)));
        }
        return arraySet;
    }

    public Map<Integer, ImsRegistration> getImsRegistrations() {
        return this.mRegistrationList;
    }

    public void addImsRegistration(int i, ImsRegistration imsRegistration) {
        this.mRegistrationList.put(Integer.valueOf(i), imsRegistration);
    }

    RemoteCallbackList<IImsRegistrationListener> getImsRegistrationListeners() {
        return this.mRegistrationListeners;
    }

    void setImsRegistrationListeners(RemoteCallbackList<IImsRegistrationListener> remoteCallbackList) {
        this.mRegistrationListeners = remoteCallbackList;
    }

    RemoteCallbackList<IImsRegistrationListener> getCmcRegistrationListeners() {
        return this.mCmcRegistrationListeners;
    }

    void setCmcRegistrationListeners(RemoteCallbackList<IImsRegistrationListener> remoteCallbackList) {
        this.mCmcRegistrationListeners = remoteCallbackList;
    }

    RemoteCallbackList<ISimMobilityStatusListener> getSimMobilityStatusListeners() {
        return this.mSimMobilityStatusListeners;
    }

    public NetworkEvent getNetworkEvent() {
        return this.mNetworkEvent;
    }

    void setNetworkEvent(NetworkEvent networkEvent) {
        this.mNetworkEvent = networkEvent;
    }

    boolean getTTYMode() {
        return this.mTTYMode;
    }

    void setTTYMode(Boolean bool) {
        this.mTTYMode = bool.booleanValue();
    }

    public boolean getRTTMode() {
        return this.mRTTMode;
    }

    public void setRTTMode(Boolean bool) {
        this.mRTTMode = bool.booleanValue();
    }

    boolean isInviteRejected() {
        return this.mInviteRejected;
    }

    void setInviteReject(boolean z) {
        this.mInviteRejected = z;
    }

    boolean isCdmaAvailableForVoice() {
        return this.mCdmaAvailableForVoice;
    }

    void setCdmaAvailableForVoice(boolean z) {
        this.mCdmaAvailableForVoice = z;
    }

    public RegisterTaskList getRegistrationTasks() {
        return this.mRegistrationTasks;
    }

    void setRegistrationTasks(RegisterTaskList registerTaskList) {
        this.mRegistrationTasks = registerTaskList;
    }

    public void activeSimMobility(boolean z) {
        this.mSimMobilityActivation = z;
    }

    public boolean isSimMobilityActivated() {
        return this.mSimMobilityActivation;
    }

    public void activeSimMobilityForRcs(boolean z) {
        this.mSimMobilityActivationForRcs = z;
    }

    public boolean isSimMobilityActivatedForRcs() {
        return this.mSimMobilityActivationForRcs;
    }

    boolean isSsacEnabled() {
        return this.mSSACPolicy;
    }

    void enableSsac(boolean z) {
        this.mSSACPolicy = z;
    }

    boolean isSuspendedWhileIrat() {
        return this.mSuspendRegiWhileIrat;
    }

    void setSuspendWhileIrat(boolean z) {
        this.mSuspendRegiWhileIrat = z;
    }

    boolean isDataUsageExceeded() {
        return this.mDataUsageExceeded;
    }

    void setDataUsageExceed(boolean z) {
        this.mDataUsageExceeded = z;
    }

    public boolean isNotifiedImsNotAvailable() {
        return this.mNotifiedImsNotAvailable;
    }

    public void setNotifiedImsNotAvailable(boolean z) {
        this.mNotifiedImsNotAvailable = z;
    }

    public boolean hasOmaDmFinished() {
        return this.mOmadmState == RegistrationManager.OmadmConfigState.FINISHED;
    }

    public RegistrationManager.OmadmConfigState getOmadmState() {
        return this.mOmadmState;
    }

    public void setOmadmState(RegistrationManager.OmadmConfigState omadmConfigState) {
        this.mOmadmState = omadmConfigState;
    }

    public void setUnprocessedOmadmConfig(boolean z) {
        this.mUnprocessedOmadmConfig = z;
    }

    public boolean getUnprocessedOmadmConfig() {
        return this.mUnprocessedOmadmConfig;
    }

    RegistrationConstants.RegistrationType getRcsVolteSingleRegistration() {
        return this.mRcsVolteSingleRegistration;
    }

    void setRcsVolteSingleRegistration(RegistrationConstants.RegistrationType registrationType) {
        this.mRcsVolteSingleRegistration = registrationType;
    }

    int getHoEnable() {
        return this.mHoEnable;
    }

    void setHoEnable(boolean z) {
        this.mHoEnable = z ? 1 : 0;
    }

    int getOnlyEpsFallback() {
        return this.mOnlyEpsFallback;
    }

    void setOnlyEpsFallback(boolean z) {
        this.mOnlyEpsFallback = z ? 1 : 0;
    }

    int getNrSaMode() {
        return this.mNrSaMode;
    }

    void setNrSaMode(boolean z) {
        this.mNrSaMode = z ? 1 : 0;
    }

    public static class RegisterTaskList extends CopyOnWriteArrayList<RegisterTask> {
        @Override // java.util.concurrent.CopyOnWriteArrayList, java.util.List, java.util.Collection
        public boolean remove(Object obj) {
            ((RegisterTask) obj).getGovernor().unRegisterIntentReceiver();
            return super.remove(obj);
        }

        @Override // java.util.concurrent.CopyOnWriteArrayList, java.util.List, java.util.Collection
        public void clear() {
            try {
                Iterator<RegisterTask> it = iterator();
                while (it.hasNext()) {
                    it.next().getGovernor().unRegisterIntentReceiver();
                }
            } catch (NullPointerException unused) {
            }
            super.clear();
        }

        @Override // java.util.concurrent.CopyOnWriteArrayList, java.util.List, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                ((RegisterTask) it.next()).getGovernor().unRegisterIntentReceiver();
            }
            return super.removeAll(collection);
        }
    }
}

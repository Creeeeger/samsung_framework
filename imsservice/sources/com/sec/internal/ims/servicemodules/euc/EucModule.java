package com.sec.internal.ims.servicemodules.euc;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.sec.ims.ImsRegistration;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.Preconditions;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.base.ServiceModuleBase;
import com.sec.internal.ims.servicemodules.euc.data.AutoconfUserConsentData;
import com.sec.internal.ims.servicemodules.euc.data.EucResponseData;
import com.sec.internal.ims.servicemodules.euc.data.EucSendResponseStatus;
import com.sec.internal.ims.servicemodules.euc.data.IEucData;
import com.sec.internal.ims.servicemodules.euc.data.resip.IEucAcknowledgment;
import com.sec.internal.ims.servicemodules.euc.data.resip.IEucNotification;
import com.sec.internal.ims.servicemodules.euc.data.resip.IEucRequest;
import com.sec.internal.ims.servicemodules.euc.data.resip.IEucSystemRequest;
import com.sec.internal.ims.servicemodules.euc.dialog.EucDisplayManager;
import com.sec.internal.ims.servicemodules.euc.dialog.IEucDisplayManager;
import com.sec.internal.ims.servicemodules.euc.locale.DeviceLocale;
import com.sec.internal.ims.servicemodules.euc.locale.IDeviceLocale;
import com.sec.internal.ims.servicemodules.euc.persistence.EucPersistence;
import com.sec.internal.ims.servicemodules.euc.persistence.EucPersistenceException;
import com.sec.internal.ims.servicemodules.euc.persistence.EucPersistenceNotifier;
import com.sec.internal.ims.servicemodules.euc.persistence.IEucPersistence;
import com.sec.internal.ims.servicemodules.euc.persistence.UserConsentPersistenceNotifier;
import com.sec.internal.ims.servicemodules.euc.snf.EucStoreAndForward;
import com.sec.internal.ims.servicemodules.euc.snf.IEucStoreAndForward;
import com.sec.internal.ims.servicemodules.euc.test.EucTestEventsFactory;
import com.sec.internal.ims.servicemodules.euc.test.EucTestIntent;
import com.sec.internal.ims.servicemodules.euc.test.IEucTestEventsFactory;
import com.sec.internal.ims.servicemodules.euc.workflow.IEucWorkflow;
import com.sec.internal.ims.servicemodules.euc.workflow.NotificationEucWorkflow;
import com.sec.internal.ims.servicemodules.euc.workflow.PersistentEucWorkflow;
import com.sec.internal.ims.servicemodules.euc.workflow.VolatileEucWorkflow;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.servicemodules.euc.IEucFactory;
import com.sec.internal.interfaces.ims.servicemodules.euc.IEucModule;
import com.sec.internal.interfaces.ims.servicemodules.euc.IEucServiceInterface;
import com.sec.internal.log.IMSLog;
import java.util.Arrays;
import java.util.Locale;
import java.util.Set;

/* loaded from: classes.dex */
public class EucModule extends ServiceModuleBase implements IEucModule {
    private static final int EVENT_CONFIGURED = 15;
    private static final int EVENT_DEREGISTERED = 17;
    private static final int EVENT_INIT = 11;
    private static final int EVENT_REGISTERED = 16;
    private static final int EVENT_SERVICE_SWITCHED = 14;
    private static final int EVENT_SIM_READY = 21;
    private static final int EVENT_SIM_REFRESH = 22;
    private static final int EVENT_START = 12;
    private static final int EVENT_STOP = 13;
    private static final int EXPECTED_NUMBER_OF_SIM_SLOTS = 2;
    private static final String LOG_STRING_OWN_IDENTITY = ", ownIdentity = ";
    private static final String LOG_TEST_REQUEST_FAILURE = "Failure, test request is invalid, skipping ";
    private final Context mContext;
    private final IDeviceLocale mDeviceLocale;
    private final IEucDisplayManager mDisplayManager;
    private final IEucFactory mEucFactory;
    private final IEucPersistence mEucPersistence;
    private int mEucPhoneId;
    private final IEucServiceInterface mEucService;
    private final SparseBooleanArray mEucServiceSwitches;
    private String mLanguageCode;
    private final SparseBooleanArray mLoadedEucrs;
    private final IEucWorkflow mNotificationWorkflow;
    private final SparseArray<String> mOwnIdentitiesCache;
    private final IEucWorkflow mPersistentWorkflow;
    private boolean mServiceModuleBaseStartCalled;
    private final SparseBooleanArray mSimAvailabilityStatuses;
    private boolean mStartInternalCalled;
    private final IEucStoreAndForward mStoreAndForward;
    private final IEucTestEventsFactory mTestEventsFactory;
    private final UserConsentPersistenceNotifier mUserConsentPersistenceNotifier;
    private final IEucWorkflow mVolatileWorkflow;
    private static final String LOG_TAG = EucModule.class.getSimpleName();
    private static final int DEFAULT_EUC_PHONE_ID = ImsConstants.Phone.SLOT_1;
    private static final String[] sRequiredServices = {"euc"};

    public EucModule(Looper looper, Context context, IEucServiceInterface iEucServiceInterface) {
        super((Looper) Preconditions.checkNotNull(looper));
        Context context2 = (Context) Preconditions.checkNotNull(context);
        this.mContext = context2;
        Preconditions.checkState(ImsRegistry.getHandlerFactory() != null, "Could not obtain handler factory!");
        this.mEucService = iEucServiceInterface;
        EucFactory eucFactory = new EucFactory();
        this.mEucFactory = eucFactory;
        this.mTestEventsFactory = new EucTestEventsFactory(eucFactory);
        UserConsentPersistenceNotifier userConsentPersistenceNotifier = UserConsentPersistenceNotifier.getInstance();
        this.mUserConsentPersistenceNotifier = userConsentPersistenceNotifier;
        Preconditions.checkState(userConsentPersistenceNotifier != null, "Could not obtain User Consent persistence notifier!");
        EucPersistenceNotifier eucPersistenceNotifier = new EucPersistenceNotifier(new EucPersistence(context2, eucFactory), userConsentPersistenceNotifier);
        this.mEucPersistence = eucPersistenceNotifier;
        EucDisplayManager eucDisplayManager = new EucDisplayManager(context2, this);
        this.mDisplayManager = eucDisplayManager;
        this.mLanguageCode = DeviceLocale.DEFAULT_LANG_VALUE;
        this.mDeviceLocale = new DeviceLocale(context2, this);
        EucStoreAndForward eucStoreAndForward = new EucStoreAndForward(iEucServiceInterface, looper);
        this.mStoreAndForward = eucStoreAndForward;
        this.mPersistentWorkflow = new PersistentEucWorkflow(eucPersistenceNotifier, eucDisplayManager, eucFactory, eucStoreAndForward);
        this.mVolatileWorkflow = new VolatileEucWorkflow(context2, this, eucPersistenceNotifier, eucDisplayManager, eucStoreAndForward, eucFactory);
        this.mNotificationWorkflow = new NotificationEucWorkflow(eucPersistenceNotifier, eucDisplayManager, eucStoreAndForward, eucFactory);
        this.mEucPhoneId = DEFAULT_EUC_PHONE_ID;
        this.mServiceModuleBaseStartCalled = false;
        this.mStartInternalCalled = false;
        this.mEucServiceSwitches = new SparseBooleanArray(2);
        this.mSimAvailabilityStatuses = new SparseBooleanArray(2);
        this.mOwnIdentitiesCache = new SparseArray<>(2);
        this.mLoadedEucrs = new SparseBooleanArray(2);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public String[] getServicesRequiring() {
        return sRequiredServices;
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void handleIntent(Intent intent) {
        Set<String> categories = intent.getCategories();
        if (categories.contains(EucTestIntent.CATEGORY_ACTION)) {
            String str = LOG_TAG;
            IMSLog.s(str, "handleIntent, Intent=" + intent);
            dumpExtras(intent.getExtras());
            String action = intent.getAction();
            IMSLog.s(str, "handleIntent, Intent action=" + action);
            if (action == null) {
                Log.e(str, "Failure, cannot handle null action!");
                return;
            }
            switch (action) {
                case "com.sec.internal.ims.servicemodules.euc.test.action.INCOMING_VOLATILE_EUCR":
                    handleEucTestIncomingRequest(2, this.mTestEventsFactory.createVolatile(intent));
                    break;
                case "com.sec.internal.ims.servicemodules.euc.test.action.INCOMING_PERSISTENT_EUCR":
                    handleEucTestIncomingRequest(1, this.mTestEventsFactory.createPersistent(intent));
                    break;
                case "com.sec.internal.ims.servicemodules.euc.test.action.INCOMING_USER_CONSENT":
                    sendMessage(obtainMessage(7, this.mTestEventsFactory.createUserConsent(intent)));
                    break;
                case "com.sec.internal.ims.servicemodules.euc.test.action.INCOMING_ACKNOWLEDGEMENT_EUCR":
                    handleEucTestIncomingRequest(4, this.mTestEventsFactory.createAcknowledgement(intent));
                    break;
                case "com.sec.internal.ims.servicemodules.euc.test.action.INCOMING_NOTIFICATION_EUCR":
                    handleEucTestIncomingRequest(3, this.mTestEventsFactory.createNotification(intent));
                    break;
                case "com.sec.internal.ims.servicemodules.euc.test.action.SEND_EUCR_RESPONSE":
                    handleEucTestSendResponse(intent);
                    break;
                case "com.sec.internal.ims.servicemodules.euc.test.action.INCOMING_SYSTEM_EUCR":
                    handleEucTestIncomingRequest(5, this.mTestEventsFactory.createSystemRequest(intent));
                    break;
                default:
                    IMSLog.s(str, "handleIntent, unsupported action: " + action);
                    break;
            }
            return;
        }
        IMSLog.s(LOG_TAG, "handleIntent, unsupported category: " + categories);
    }

    private void handleEucTestSendResponse(Intent intent) {
        final IEucData createEucData = this.mTestEventsFactory.createEucData(intent);
        if (createEucData != null) {
            final String stringExtra = intent.getStringExtra(EucTestIntent.Extras.USER_PIN);
            final EucResponseData.Response response = intent.getBooleanExtra(EucTestIntent.Extras.USER_ACCEPT, false) ? EucResponseData.Response.ACCEPT : EucResponseData.Response.DECLINE;
            final IEucStoreAndForward.IResponseCallback iResponseCallback = new IEucStoreAndForward.IResponseCallback() { // from class: com.sec.internal.ims.servicemodules.euc.EucModule$$ExternalSyntheticLambda0
                @Override // com.sec.internal.ims.servicemodules.euc.snf.IEucStoreAndForward.IResponseCallback
                public final void onStatus(EucSendResponseStatus eucSendResponseStatus) {
                    EucModule.lambda$handleEucTestSendResponse$0(IEucData.this, eucSendResponseStatus);
                }
            };
            post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.euc.EucModule$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    EucModule.this.lambda$handleEucTestSendResponse$1(stringExtra, createEucData, response, iResponseCallback);
                }
            });
            return;
        }
        Log.e(LOG_TAG, "Failure, test request is invalid, skipping com.sec.internal.ims.servicemodules.euc.test.action.SEND_EUCR_RESPONSE");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$handleEucTestSendResponse$0(IEucData iEucData, EucSendResponseStatus eucSendResponseStatus) {
        Log.d(LOG_TAG, "Test send response request key=" + iEucData.getKey() + ", send response status=" + eucSendResponseStatus);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleEucTestSendResponse$1(String str, IEucData iEucData, EucResponseData.Response response, IEucStoreAndForward.IResponseCallback iResponseCallback) {
        if (str != null) {
            this.mStoreAndForward.sendResponse(iEucData, response, str, iResponseCallback);
        } else {
            this.mStoreAndForward.sendResponse(iEucData, response, iResponseCallback);
        }
    }

    private <T> void handleEucTestIncomingRequest(int i, T t) {
        if (t != null) {
            sendMessage(obtainMessage(i, new AsyncResult(null, t, null)));
            return;
        }
        Log.e(LOG_TAG, "Failure, test request is invalid, skipping request id=" + i);
    }

    private void dumpExtras(Bundle bundle) {
        StringBuilder sb = new StringBuilder("Extras:\n");
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                sb.append(str);
                sb.append(": ");
                sb.append(obj);
                sb.append("\n");
            }
        }
        Log.i(LOG_TAG, IMSLog.checker(sb.toString()));
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void init() {
        Log.d(LOG_TAG, McsConstants.PushMessages.VALUE_INIT);
        super.init();
        sendMessage(obtainMessage(11));
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void start() {
        super.start();
        sendMessage(obtainMessage(12));
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void stop() {
        super.stop();
        sendMessage(obtainMessage(13));
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onConfigured(int i) {
        Log.d(LOG_TAG, "onConfigured, phoneId = " + i);
        super.onConfigured(i);
        sendMessage(obtainMessage(15, Integer.valueOf(i)));
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void onRegistered(ImsRegistration imsRegistration) {
        IMSLog.s(LOG_TAG, "onRegistered() " + imsRegistration);
        super.onRegistered(imsRegistration);
        sendMessage(obtainMessage(16, imsRegistration));
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onDeregistering(ImsRegistration imsRegistration) {
        Log.d(LOG_TAG, "onDeregistering");
        super.onDeregistering(imsRegistration);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void onDeregistered(ImsRegistration imsRegistration, int i) {
        IMSLog.s(LOG_TAG, "onDeregistered() " + imsRegistration);
        super.onDeregistered(imsRegistration, i);
        sendMessage(obtainMessage(17, imsRegistration));
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onSimChanged(int i) {
        Log.d(LOG_TAG, "onSimChanged");
        super.onSimChanged(i);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onServiceSwitched(int i, ContentValues contentValues) {
        Log.i(LOG_TAG, "onServiceSwitched, phoneId = " + i + ", switchStatus = " + contentValues);
        super.onServiceSwitched(i, contentValues);
        sendMessage(obtainMessage(14, Integer.valueOf(i)));
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        switch (message.what) {
            case 1:
                handleIncomingPersistentMessage((IEucRequest) ((AsyncResult) message.obj).result);
                break;
            case 2:
                handleIncomingVolatileMessage((IEucRequest) ((AsyncResult) message.obj).result);
                break;
            case 3:
                handleIncomingNotificationMessage((IEucNotification) ((AsyncResult) message.obj).result);
                break;
            case 4:
                handleIncomingAckMessage((IEucAcknowledgment) ((AsyncResult) message.obj).result);
                break;
            case 5:
                handleIncomingSystemMessage((IEucSystemRequest) ((AsyncResult) message.obj).result);
                break;
            case 6:
                handleReconfigurationResponse((IEucSystemRequest) message.obj, message.arg1);
                break;
            case 7:
                handleIncomingAutoconfUserConsent((AutoconfUserConsentData) message.obj);
                break;
            case 11:
                handleInit();
                break;
            case 12:
                handleStart();
                break;
            case 13:
                handleStop();
                break;
            case 14:
                handleServiceSwitched(((Integer) message.obj).intValue());
                break;
            case 15:
                handleConfigured(((Integer) message.obj).intValue());
                break;
            case 16:
                handleRegistered((ImsRegistration) message.obj);
                break;
            case 17:
                handleDeregistered((ImsRegistration) message.obj);
                break;
            case 21:
                handleSimReady((ISimManager) ((AsyncResult) message.obj).userObj);
                break;
            case 22:
                handleSimRefresh((ISimManager) ((AsyncResult) message.obj).userObj);
                break;
        }
    }

    private void handleIncomingPersistentMessage(IEucRequest iEucRequest) {
        Log.i(LOG_TAG, "handleIncomingPersistentMessage, id=" + iEucRequest.getEucId());
        this.mPersistentWorkflow.handleIncomingEuc(this.mEucFactory.createEUC(iEucRequest));
    }

    private void handleIncomingVolatileMessage(IEucRequest iEucRequest) {
        Log.i(LOG_TAG, "handleIncomingVolatileMessage, id=" + iEucRequest.getEucId());
        this.mVolatileWorkflow.handleIncomingEuc(this.mEucFactory.createEUC(iEucRequest));
    }

    private void handleIncomingAckMessage(IEucAcknowledgment iEucAcknowledgment) {
        Log.i(LOG_TAG, "handleIncomingAckMessage, id=" + iEucAcknowledgment.getEucId());
        this.mPersistentWorkflow.handleIncomingEuc(this.mEucFactory.createEUC(iEucAcknowledgment));
    }

    private void handleIncomingNotificationMessage(IEucNotification iEucNotification) {
        Log.i(LOG_TAG, "handleIncomingNotificationMessage, id=" + iEucNotification.getEucId());
        this.mNotificationWorkflow.handleIncomingEuc(this.mEucFactory.createEUC(iEucNotification));
    }

    private void handleIncomingSystemMessage(IEucSystemRequest iEucSystemRequest) {
        String str = LOG_TAG;
        Log.d(str, "handleIncomingSystemMessage, id=" + iEucSystemRequest.getEucId() + ", type=" + iEucSystemRequest.getType());
        StringBuilder sb = new StringBuilder();
        sb.append("message data=");
        sb.append(IMSLog.checker(iEucSystemRequest.getMessageData()));
        Log.i(str, sb.toString());
        if (iEucSystemRequest.getType().equals(IEucSystemRequest.EucSystemRequestType.RECONFIGURE)) {
            ImsRegistry.getConfigModule().onNewRcsConfigurationNeeded(iEucSystemRequest.getOwnIdentity(), "euc", obtainMessage(6, 0, 0, iEucSystemRequest));
        }
    }

    private void handleReconfigurationResponse(IEucSystemRequest iEucSystemRequest, int i) {
        String str = LOG_TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("handleReconfigurationResponse, id=");
        sb.append(iEucSystemRequest.getEucId());
        sb.append(", ownIdentity=");
        sb.append(IMSLog.checker(iEucSystemRequest.getOwnIdentity()));
        sb.append(", response=");
        sb.append(i == 1 ? "accepted" : "rejected");
        Log.i(str, sb.toString());
    }

    private void handleIncomingAutoconfUserConsent(AutoconfUserConsentData autoconfUserConsentData) {
        Log.i(LOG_TAG, "handleIncomingAutoconfUserConsent " + IMSLog.checker(autoconfUserConsentData));
        if (!this.mStartInternalCalled) {
            try {
                this.mEucPersistence.open();
            } catch (EucPersistenceException e) {
                Log.e(LOG_TAG, "Failure, unable to open persistence: " + e + ". Abandoning configuration consent!");
                return;
            }
        }
        try {
            this.mEucPersistence.insertAutoconfUserConsent(autoconfUserConsentData);
        } catch (EucPersistenceException e2) {
            Log.e(LOG_TAG, "Unable to store User Consent in persistence: " + e2);
        }
        if (this.mStartInternalCalled) {
            return;
        }
        this.mEucPersistence.close();
    }

    private void handleRegistered(ImsRegistration imsRegistration) {
        int phoneId = imsRegistration.getPhoneId();
        if (isMultiSim() || isEucPhoneId(phoneId)) {
            Set services = imsRegistration.getServices();
            String[] strArr = sRequiredServices;
            if (services.containsAll(Arrays.asList(strArr))) {
                String str = LOG_TAG;
                Log.d(str, "handleRegistered, phoneId = " + phoneId);
                String ownIdentity = getOwnIdentity(phoneId);
                if (ownIdentity != null) {
                    this.mStoreAndForward.forward(ownIdentity);
                    return;
                }
                Log.e(str, "Could not obtain own identity, ignore registration for phoneId = " + phoneId);
                return;
            }
            Log.e(LOG_TAG, "handleRegistered, phoneId = " + phoneId + ", no registration for required services = " + Arrays.toString(strArr) + ", ignore!");
            return;
        }
        Log.i(LOG_TAG, "handleRegistered, ignoring registration for phoneId = " + phoneId);
    }

    private void handleDeregistered(ImsRegistration imsRegistration) {
        int phoneId = imsRegistration.getPhoneId();
        if (isMultiSim() || isEucPhoneId(phoneId)) {
            Set services = imsRegistration.getServices();
            String[] strArr = sRequiredServices;
            if (services.containsAll(Arrays.asList(strArr))) {
                String str = LOG_TAG;
                Log.d(str, "handleDeregistered, phoneId = " + phoneId);
                String ownIdentity = getOwnIdentity(phoneId);
                if (ownIdentity != null) {
                    this.mStoreAndForward.store(ownIdentity);
                    return;
                }
                Log.e(str, "Could not obtain own identity, ignore de-registration for phoneId = " + phoneId);
                return;
            }
            Log.e(LOG_TAG, "handleDeregistered, phoneId = " + phoneId + ", no registration for required services = " + Arrays.toString(strArr) + ", ignore!");
            return;
        }
        Log.i(LOG_TAG, "handleDeregistered, ignoring de-registration for phoneId = " + phoneId);
    }

    private void handleSimReady(ISimManager iSimManager) {
        int simSlotIndex = iSimManager.getSimSlotIndex();
        boolean isSimAvailable = iSimManager.isSimAvailable();
        Log.i(LOG_TAG, "handleSimReady, phoneId = " + simSlotIndex + ", isSimAvailable = " + isSimAvailable);
        handleSimAvailability(simSlotIndex, isSimAvailable);
    }

    private void handleSimRefresh(ISimManager iSimManager) {
        int simSlotIndex = iSimManager.getSimSlotIndex();
        boolean isSimAvailable = iSimManager.isSimAvailable();
        Log.i(LOG_TAG, "handleSimRefresh, phoneId = " + simSlotIndex + ", isSimAvailable = " + isSimAvailable);
        handleSimAvailability(simSlotIndex, isSimAvailable);
    }

    private void handleSimAvailability(int i, boolean z) {
        this.mSimAvailabilityStatuses.put(i, z);
        if (z) {
            startConditionally();
            handleSimAvailable(i);
        } else {
            stopConditionally();
        }
        this.mUserConsentPersistenceNotifier.notifyListener(i);
    }

    private void handleSimAvailable(int i) {
        String str = ", phoneId = " + i;
        String ownIdentity = getOwnIdentity(i);
        invalidateOwnIdentity(i);
        String ownIdentity2 = getOwnIdentity(i);
        String str2 = LOG_TAG;
        Log.i(str2, "handleSimAvailable" + str + ", oldOwnIdentity = " + IMSLog.checker(ownIdentity) + ", newOwnIdentity = " + IMSLog.checker(ownIdentity2));
        StringBuilder sb = new StringBuilder();
        sb.append("handleSimAvailable, mStartInternalCalled = ");
        sb.append(this.mStartInternalCalled);
        Log.d(str2, sb.toString());
        if (this.mStartInternalCalled) {
            if (!TextUtils.equals(ownIdentity, ownIdentity2)) {
                boolean z = this.mLoadedEucrs.get(i);
                IMSLog.s(str2, "handleSimAvailable, EUCRs areLoaded = " + z + ", phoneId = " + i + LOG_STRING_OWN_IDENTITY + ownIdentity);
                if (z && ownIdentity != null) {
                    discardEucrs(ownIdentity);
                    this.mLoadedEucrs.delete(i);
                }
            }
            boolean z2 = this.mEucServiceSwitches.get(i);
            boolean isMultiSim = isMultiSim();
            Log.i(str2, "handleSimAvailable" + str + ", isSwitchedOn = " + z2 + ", isMultiSim = " + isMultiSim);
            if (z2) {
                if (isMultiSim || isEucPhoneId(i)) {
                    loadPendingEucrsConditionally(i);
                }
            }
        }
    }

    private void handleConfigured(int i) {
        Log.d(LOG_TAG, "handleConfigured, phoneId = " + i + ", mEucPhoneId = " + this.mEucPhoneId);
    }

    private void handleInit() {
        Log.i(LOG_TAG, "handleInit, isMultiSimIms=" + isMultiSim());
        this.mEucPhoneId = getEucPhoneId();
        initiateServiceSwitches();
        registerForSimEvents();
        initiateSimAvailabilityStatuses();
        notifyOnInit();
    }

    private void registerForSimEvents() {
        for (ISimManager iSimManager : SimManagerFactory.getAllSimManagers()) {
            registerForSimReady(iSimManager);
            registerForSimRefresh(iSimManager);
        }
    }

    private void registerForSimReady(ISimManager iSimManager) {
        Log.d(LOG_TAG, "registerForSimReady, phoneId = " + iSimManager.getSimSlotIndex());
        iSimManager.registerForSimReady(this, 21, iSimManager);
    }

    private void registerForSimRefresh(ISimManager iSimManager) {
        Log.d(LOG_TAG, "registerForSimRefresh, phoneId = " + iSimManager.getSimSlotIndex());
        iSimManager.registerForSimRefresh(this, 22, iSimManager);
        iSimManager.registerForSimRemoved(this, 22, iSimManager);
    }

    private void handleStart() {
        Preconditions.checkState(!this.mServiceModuleBaseStartCalled, "Shall not happen! Something wrong with IMS framework lifecycle, Euc module already started!");
        this.mServiceModuleBaseStartCalled = true;
        startConditionally();
    }

    private void handleStop() {
        Preconditions.checkState(this.mServiceModuleBaseStartCalled, "Shall not happen! Something wrong with IMS framework lifecycle, Euc module already stopped!");
        this.mServiceModuleBaseStartCalled = false;
        stopOnServiceModuleBaseStop();
    }

    private void handleServiceSwitched(int i) {
        boolean isEucSwitchedOn = isEucSwitchedOn(i);
        Log.i(LOG_TAG, "handleServiceSwitched, phoneId = " + i + ", isEucOn = " + isEucSwitchedOn);
        this.mEucServiceSwitches.put(i, isEucSwitchedOn);
        if (isEucSwitchedOn) {
            startConditionally();
            if ((isMultiSim() || isEucPhoneId(i)) && this.mSimAvailabilityStatuses.indexOfKey(i) >= 0) {
                SparseBooleanArray sparseBooleanArray = this.mSimAvailabilityStatuses;
                if (sparseBooleanArray.valueAt(sparseBooleanArray.indexOfKey(i)) && this.mStartInternalCalled) {
                    loadPendingEucrsConditionally(i);
                    return;
                }
                return;
            }
            return;
        }
        if ((isMultiSim() || isEucPhoneId(i)) && this.mStartInternalCalled) {
            discardEucrsConditionally(i);
        }
        stopConditionally();
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0019, code lost:
    
        if (r3.intValue() == 1) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean isEucSwitchedOn(int r4) {
        /*
            r3 = this;
            android.content.Context r0 = r3.mContext
            java.lang.String[] r3 = r3.getServicesRequiring()
            android.content.ContentValues r3 = com.sec.internal.helper.DmConfigHelper.getImsSwitchValue(r0, r3, r4)
            java.lang.String r0 = "euc"
            java.lang.Object r3 = r3.get(r0)
            java.lang.Integer r3 = (java.lang.Integer) r3
            if (r3 == 0) goto L1c
            int r3 = r3.intValue()
            r0 = 1
            if (r3 != r0) goto L1c
            goto L1d
        L1c:
            r0 = 0
        L1d:
            java.lang.String r3 = com.sec.internal.ims.servicemodules.euc.EucModule.LOG_TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Euc switch = "
            r1.append(r2)
            r1.append(r0)
            java.lang.String r2 = " for phoneId = "
            r1.append(r2)
            r1.append(r4)
            java.lang.String r4 = r1.toString()
            android.util.Log.d(r3, r4)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.euc.EucModule.isEucSwitchedOn(int):boolean");
    }

    private void loadPendingEucrsConditionally(int i) {
        String str = LOG_TAG;
        Log.i(str, "loadPendingEucrsConditionally, phoneId=" + i);
        String ownIdentity = getOwnIdentity(i);
        boolean z = this.mLoadedEucrs.get(i);
        IMSLog.s(str, "loadPendingEucrsConditionally, phoneId=" + i + LOG_STRING_OWN_IDENTITY + ownIdentity + ", isLoaded=" + z);
        if (ownIdentity == null || z) {
            return;
        }
        loadPendingEucrs(ownIdentity);
        this.mLoadedEucrs.put(i, true);
    }

    private void discardEucrsConditionally(int i) {
        String str = LOG_TAG;
        Log.i(str, "discardEucrsConditionally, phoneId=" + i);
        String ownIdentity = getOwnIdentity(i);
        boolean z = this.mLoadedEucrs.get(i);
        IMSLog.s(str, "discardEucrsConditionally, phoneId=" + i + LOG_STRING_OWN_IDENTITY + ownIdentity + ", isLoaded=" + z);
        if (ownIdentity == null || !z) {
            return;
        }
        discardEucrs(ownIdentity);
        this.mLoadedEucrs.delete(i);
    }

    private void loadPendingEucrs(String str) {
        Log.i(LOG_TAG, "loadPendingEucrs, ownIdentity = " + IMSLog.checker(str));
        this.mPersistentWorkflow.load(str);
        this.mVolatileWorkflow.load(str);
        this.mNotificationWorkflow.load(str);
    }

    private void discardEucrs(String str) {
        Log.i(LOG_TAG, "discardEucrs, ownIdentity = " + IMSLog.checker(str));
        this.mPersistentWorkflow.discard(str);
        this.mVolatileWorkflow.discard(str);
        this.mNotificationWorkflow.discard(str);
    }

    private String getOwnIdentityNotCached(int i) {
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        String str = null;
        if (simManagerFromSimSlot != null) {
            String imsi = simManagerFromSimSlot.getImsi();
            if (!TextUtils.isEmpty(imsi)) {
                str = imsi;
            }
        } else {
            Log.e(LOG_TAG, "getOwnIdentityNotCached, Unable to find sim manager related to phoneId = " + i);
        }
        IMSLog.s(LOG_TAG, "getOwnIdentityNotCached, phoneId = " + i + ", result = " + str);
        return str;
    }

    private String getOwnIdentity(int i) {
        String str = this.mOwnIdentitiesCache.get(i);
        if (str == null && (str = getOwnIdentityNotCached(i)) != null) {
            this.mOwnIdentitiesCache.put(i, str);
        }
        IMSLog.s(LOG_TAG, "getOwnIdentity, phoneId=" + i + ", result=" + str);
        return str;
    }

    private void invalidateOwnIdentity(int i) {
        Log.d(LOG_TAG, "invalidateOwnIdentity, phoneId=" + i);
        this.mOwnIdentitiesCache.delete(i);
    }

    private void invalidateOwnIdentities() {
        Log.d(LOG_TAG, "invalidateOwnIdentities");
        this.mOwnIdentitiesCache.clear();
    }

    private void performStartupRegistrations() {
        Log.d(LOG_TAG, "performStartupRegistrations");
        this.mEucService.registerForPersistentMessage(this, 1, null);
        this.mEucService.registerForVolatileMessage(this, 2, null);
        this.mEucService.registerForAckMessage(this, 4, null);
        this.mEucService.registerForNotificationMessage(this, 3, null);
        this.mEucService.registerForSystemMessage(this, 5, null);
        this.mVolatileWorkflow.start();
        this.mDeviceLocale.start(new IDeviceLocale.IDeviceLocaleListener() { // from class: com.sec.internal.ims.servicemodules.euc.EucModule$$ExternalSyntheticLambda2
            @Override // com.sec.internal.ims.servicemodules.euc.locale.IDeviceLocale.IDeviceLocaleListener
            public final void onLocaleChanged(Locale locale) {
                EucModule.this.lambda$performStartupRegistrations$2(locale);
            }
        });
        this.mDisplayManager.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performStartupRegistrations$2(Locale locale) {
        String languageCode = this.mDeviceLocale.getLanguageCode(locale);
        if (this.mLanguageCode.equals(languageCode)) {
            return;
        }
        Log.d(LOG_TAG, "Changing languageCode to " + languageCode);
        this.mLanguageCode = languageCode;
        this.mPersistentWorkflow.changeLanguage(languageCode);
        this.mVolatileWorkflow.changeLanguage(languageCode);
        this.mNotificationWorkflow.changeLanguage(languageCode);
    }

    private void performShutdownDeregistrations() {
        Log.d(LOG_TAG, "performShutdownDeregistrations");
        this.mEucService.unregisterForPersistentMessage(this);
        this.mEucService.unregisterForVolatileMessage(this);
        this.mEucService.unregisterForAckMessage(this);
        this.mEucService.unregisterForNotificationMessage(this);
        this.mEucService.unregisterForSystemMessage(this);
        this.mVolatileWorkflow.stop();
        this.mDeviceLocale.stop();
        this.mDisplayManager.stop();
    }

    private boolean isMultiSim() {
        return SimUtil.isDualIMS();
    }

    private boolean isEucPhoneId(int i) {
        return i == this.mEucPhoneId;
    }

    private boolean isAtLeastOneSimAvailableAndSwitchedOn() {
        for (int i = 0; i < SimUtil.getPhoneCount(); i++) {
            if (this.mEucServiceSwitches.get(i) && this.mSimAvailabilityStatuses.get(i)) {
                return true;
            }
        }
        return false;
    }

    private boolean checkConditionsForInternalStart() {
        boolean z;
        if (isMultiSim()) {
            z = isAtLeastOneSimAvailableAndSwitchedOn();
        } else {
            z = this.mEucServiceSwitches.get(this.mEucPhoneId) && this.mSimAvailabilityStatuses.get(this.mEucPhoneId);
        }
        Log.i(LOG_TAG, "checkConditionsForInternalStart: mStartInternalCalled=" + this.mStartInternalCalled + ", couldBeStarted=" + z);
        return !this.mStartInternalCalled && z;
    }

    private boolean checkConditionsForInternalStop() {
        boolean z;
        if (isMultiSim()) {
            z = !isAtLeastOneSimAvailableAndSwitchedOn();
        } else {
            z = (this.mEucServiceSwitches.get(this.mEucPhoneId) && this.mSimAvailabilityStatuses.get(this.mEucPhoneId)) ? false : true;
        }
        Log.i(LOG_TAG, "checkConditionsForInternalStop: mStartInternalCalled=" + this.mStartInternalCalled + ", couldBeStopped=" + z);
        return this.mStartInternalCalled && z;
    }

    private void startConditionally() {
        Log.d(LOG_TAG, "startConditionally");
        if (checkConditionsForInternalStart()) {
            startInternal();
        }
    }

    private void stopConditionally() {
        Log.d(LOG_TAG, "stopConditionally");
        if (checkConditionsForInternalStop()) {
            stopInternal();
        }
    }

    private void stopOnServiceModuleBaseStop() {
        Log.d(LOG_TAG, "stopOnServiceModuleBaseStop, mStartInternalCalled=" + this.mStartInternalCalled);
        if (this.mStartInternalCalled) {
            stopInternal();
        }
    }

    public void startInternal() {
        Log.d(LOG_TAG, "startInternal");
        Preconditions.checkState(!this.mStartInternalCalled, "startInternal was already called!");
        try {
            this.mEucPersistence.open();
            this.mStartInternalCalled = true;
            performStartupRegistrations();
            if (isMultiSim()) {
                for (int i = 0; i < this.mEucServiceSwitches.size(); i++) {
                    int keyAt = this.mEucServiceSwitches.keyAt(i);
                    if (this.mEucServiceSwitches.valueAt(i) && this.mSimAvailabilityStatuses.indexOfKey(keyAt) >= 0) {
                        SparseBooleanArray sparseBooleanArray = this.mSimAvailabilityStatuses;
                        if (sparseBooleanArray.valueAt(sparseBooleanArray.indexOfKey(keyAt))) {
                            loadPendingEucrsConditionally(keyAt);
                        }
                    }
                }
                return;
            }
            loadPendingEucrsConditionally(this.mEucPhoneId);
        } catch (EucPersistenceException e) {
            Log.e(LOG_TAG, "Failure, unable to open persistence: " + e + ". Cannot start!");
        }
    }

    public void stopInternal() {
        Log.d(LOG_TAG, "stopInternal");
        Preconditions.checkState(this.mStartInternalCalled, "startInternal was not yet called!");
        if (isMultiSim()) {
            for (int i = 0; i < this.mEucServiceSwitches.size(); i++) {
                int keyAt = this.mEucServiceSwitches.keyAt(i);
                if (this.mEucServiceSwitches.valueAt(i)) {
                    discardEucrsConditionally(keyAt);
                }
            }
        } else {
            discardEucrsConditionally(this.mEucPhoneId);
        }
        performShutdownDeregistrations();
        invalidateOwnIdentities();
        this.mEucPersistence.close();
        this.mStartInternalCalled = false;
    }

    private int getEucPhoneId() {
        String str = LOG_TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("Euc phoneId = ");
        int i = DEFAULT_EUC_PHONE_ID;
        sb.append(i);
        Log.d(str, sb.toString());
        return i;
    }

    private void initiateServiceSwitches() {
        Log.d(LOG_TAG, "initiateServiceSwitches");
        for (int i = 0; i < SimUtil.getPhoneCount(); i++) {
            this.mEucServiceSwitches.put(i, isEucSwitchedOn(i));
        }
    }

    private void initiateSimAvailabilityStatuses() {
        Log.d(LOG_TAG, "initiateSimAvailabilityStatuses");
        for (ISimManager iSimManager : SimManagerFactory.getAllSimManagers()) {
            this.mSimAvailabilityStatuses.put(iSimManager.getSimSlotIndex(), iSimManager.isSimAvailable());
        }
    }

    private void notifyOnInit() {
        Log.d(LOG_TAG, "notifyOnInit");
        for (int i = 0; i < SimUtil.getPhoneCount(); i++) {
            this.mUserConsentPersistenceNotifier.notifyListener(i);
        }
    }
}

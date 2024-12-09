package com.sec.internal.ims.servicemodules.tapi.service.api;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Log;
import com.gsma.services.rcs.IRcsServiceRegistrationListener;
import com.gsma.services.rcs.RcsServiceRegistration;
import com.gsma.services.rcs.contact.ContactId;
import com.gsma.services.rcs.filetransfer.FileTransfer;
import com.gsma.services.rcs.filetransfer.FileTransferLog;
import com.gsma.services.rcs.filetransfer.IFileTransfer;
import com.gsma.services.rcs.filetransfer.IFileTransferService;
import com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration;
import com.gsma.services.rcs.filetransfer.IGroupFileTransferListener;
import com.gsma.services.rcs.filetransfer.IOneToOneFileTransferListener;
import com.gsma.services.rcs.groupdelivery.GroupDeliveryInfo;
import com.sec.ims.ImsRegistration;
import com.sec.ims.extensions.ContextExt;
import com.sec.ims.options.Capabilities;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.FileDisposition;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImContract;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.ImSettings;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.constants.ims.servicemodules.im.reason.CancelReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.FtRejectReason;
import com.sec.internal.constants.ims.servicemodules.im.result.Result;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.TelephonyUtilsWrapper;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.FtMessage;
import com.sec.internal.ims.servicemodules.im.ImCache;
import com.sec.internal.ims.servicemodules.im.ImMessage;
import com.sec.internal.ims.servicemodules.im.ImSession;
import com.sec.internal.ims.servicemodules.im.MessageBase;
import com.sec.internal.ims.servicemodules.im.listener.IFtEventListener;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.servicemodules.tapi.service.broadcaster.GroupFileTransferBroadcaster;
import com.sec.internal.ims.servicemodules.tapi.service.broadcaster.IRegistrationStatusBroadcaster;
import com.sec.internal.ims.servicemodules.tapi.service.broadcaster.OneToOneFileTransferBroadcaster;
import com.sec.internal.ims.servicemodules.tapi.service.utils.FileUtils;
import com.sec.internal.ims.util.PhoneUtils;
import com.sec.internal.ims.util.RcsSettingsUtils;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.servicemodules.im.IImModule;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public class FileTransferingServiceImpl extends IFileTransferService.Stub implements IFtEventListener, IRegistrationStatusBroadcaster {
    private static final String LOG_TAG = FileTransferingServiceImpl.class.getSimpleName();
    private static Hashtable<String, IFileTransfer> mIFtSessions = new Hashtable<>();
    Context mContext;
    private GroupFileTransferBroadcaster mGroupFileTransferBroadcaster;
    private IImModule mImModule;
    private OneToOneFileTransferBroadcaster mOneToOneFileTransferBroadcaster;
    private RemoteCallbackList<IRcsServiceRegistrationListener> mServiceListeners = new RemoteCallbackList<>();
    private Object mLock = new Object();

    public void clearFileTransferDeliveryExpiration(List<String> list) throws RemoteException {
    }

    public int getServiceVersion() throws ServerApiException {
        return 2;
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onCancelRequestFailed(FtMessage ftMessage) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onFileResizingNeeded(FtMessage ftMessage, long j) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onFileTransferAttached(FtMessage ftMessage) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onMessageSendingFailed(MessageBase messageBase, IMnoStrategy.StrategyResponse strategyResponse, Result result) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onNotifyCloudMsgFtEvent(FtMessage ftMessage) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onTransferStarted(FtMessage ftMessage) {
    }

    public FileTransferingServiceImpl(Context context, IImModule iImModule) {
        this.mOneToOneFileTransferBroadcaster = null;
        this.mGroupFileTransferBroadcaster = null;
        this.mContext = context;
        this.mImModule = iImModule;
        this.mOneToOneFileTransferBroadcaster = new OneToOneFileTransferBroadcaster(this.mContext);
        this.mGroupFileTransferBroadcaster = new GroupFileTransferBroadcaster(this.mContext);
        this.mImModule.registerFtEventListener(ImConstants.Type.MULTIMEDIA, this);
    }

    public boolean isServiceRegistered() throws ServerApiException {
        IRegistrationManager registrationManager = ImsRegistry.getRegistrationManager();
        if (registrationManager == null) {
            return false;
        }
        for (ImsRegistration imsRegistration : registrationManager.getRegistrationInfo()) {
            if (imsRegistration.hasService("ft") || imsRegistration.hasService("ft_http")) {
                return true;
            }
        }
        return false;
    }

    public void addEventListener(IRcsServiceRegistrationListener iRcsServiceRegistrationListener) throws ServerApiException {
        synchronized (this.mLock) {
            this.mServiceListeners.register(iRcsServiceRegistrationListener);
        }
    }

    public void removeEventListener(IRcsServiceRegistrationListener iRcsServiceRegistrationListener) throws ServerApiException {
        synchronized (this.mLock) {
            this.mServiceListeners.unregister(iRcsServiceRegistrationListener);
        }
    }

    public IFileTransferServiceConfiguration getConfiguration() throws ServerApiException {
        return new FileTransferServiceConfigurationImpl(this.mImModule.getImConfig());
    }

    public List<IBinder> getFileTransfers() throws ServerApiException {
        Log.d(LOG_TAG, "getFileTransfers get all transfered file.");
        ArrayList arrayList = new ArrayList(mIFtSessions.size());
        Enumeration<IFileTransfer> elements = mIFtSessions.elements();
        while (elements.hasMoreElements()) {
            arrayList.add(elements.nextElement().asBinder());
        }
        return arrayList;
    }

    public IFileTransfer getFileTransfer(String str) throws ServerApiException {
        return mIFtSessions.get(str);
    }

    public OneToOneFileTransferImpl getFileTransferByID(String str) {
        return mIFtSessions.get(str);
    }

    public IFileTransfer transferFile(ContactId contactId, Uri uri, FileTransfer.Disposition disposition, boolean z) throws ServerApiException {
        String str = "tel:" + PhoneUtils.extractNumberFromUri(contactId.toString());
        String fileNameFromPath = FileUtils.getFileNameFromPath(FileUtils.getFilePathFromUri(this.mContext, uri));
        String str2 = LOG_TAG;
        Log.d(str2, "transferFile, contentUri = " + uri.toString());
        try {
            FtMessage ftMessage = this.mImModule.attachFileToSingleChat(0, fileNameFromPath, uri, ImsUri.parse(str), EnumSet.of(NotificationStatus.DELIVERED, NotificationStatus.DISPLAYED), null, MIMEContentType.FT_HTTP, false, false, false, false, null, disposition == FileTransfer.Disposition.RENDER ? FileDisposition.RENDER : FileDisposition.ATTACH).get();
            if (ftMessage == null) {
                Log.e(str2, "attachFileToSingleChat failed, return null!");
                return null;
            }
            OneToOneFileTransferImpl oneToOneFileTransferImpl = new OneToOneFileTransferImpl(ftMessage, this.mImModule);
            addFileTransferingSession(String.valueOf(ftMessage.getId()), oneToOneFileTransferImpl);
            return oneToOneFileTransferImpl;
        } catch (InterruptedException e) {
            e.printStackTrace();
            return null;
        } catch (ExecutionException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public void addOneToOneFileTransferListener(IOneToOneFileTransferListener iOneToOneFileTransferListener) throws ServerApiException {
        synchronized (this.mLock) {
            this.mOneToOneFileTransferBroadcaster.addOneToOneFileTransferListener(iOneToOneFileTransferListener);
        }
    }

    public void removeOneToOneFileTransferListener(IOneToOneFileTransferListener iOneToOneFileTransferListener) throws ServerApiException {
        synchronized (this.mLock) {
            this.mOneToOneFileTransferBroadcaster.removeOneToOneFileTransferListener(iOneToOneFileTransferListener);
        }
    }

    public void addGroupFileTransferListener(IGroupFileTransferListener iGroupFileTransferListener) throws ServerApiException {
        synchronized (this.mLock) {
            this.mGroupFileTransferBroadcaster.addGroupFileTransferListener(iGroupFileTransferListener);
        }
    }

    public void removeGroupFileTransferListener(IGroupFileTransferListener iGroupFileTransferListener) throws ServerApiException {
        synchronized (this.mLock) {
            this.mGroupFileTransferBroadcaster.removeGroupFileTransferListener(iGroupFileTransferListener);
        }
    }

    public static void addFileTransferingSession(String str, OneToOneFileTransferImpl oneToOneFileTransferImpl) {
        if (mIFtSessions.containsKey(str)) {
            return;
        }
        mIFtSessions.put(str, oneToOneFileTransferImpl);
    }

    public static void removeFileTransferingSession(String str) {
        if (mIFtSessions.containsKey(str)) {
            mIFtSessions.remove(str);
        }
    }

    public void removeFileTransferingSessions(List<String> list) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            mIFtSessions.remove(it.next());
        }
    }

    @Override // com.sec.internal.ims.servicemodules.tapi.service.broadcaster.IRegistrationStatusBroadcaster
    public void notifyRegistrationEvent(boolean z, RcsServiceRegistration.ReasonCode reasonCode) {
        synchronized (this.mLock) {
            int beginBroadcast = this.mServiceListeners.beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                if (z) {
                    try {
                        this.mServiceListeners.getBroadcastItem(i).onServiceRegistered();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    this.mServiceListeners.getBroadcastItem(i).onServiceUnregistered(reasonCode);
                }
            }
            this.mServiceListeners.finishBroadcast();
        }
    }

    public IFileTransfer transferFileToGroupChat(String str, Uri uri, FileTransfer.Disposition disposition, boolean z) throws ServerApiException {
        if (!canTransferFileToGroupChat(str)) {
            return null;
        }
        String fileNameFromPath = FileUtils.getFileNameFromPath(FileUtils.getFilePathFromUri(this.mContext, uri));
        String str2 = LOG_TAG;
        Log.d(str2, "transferFileToGroupChat, file = " + uri.toString());
        try {
            FtMessage ftMessage = this.mImModule.attachFileToGroupChat(str, fileNameFromPath, uri, EnumSet.of(NotificationStatus.DELIVERED, NotificationStatus.DISPLAYED), null, null, false, false, false, false, null, disposition == FileTransfer.Disposition.RENDER ? FileDisposition.RENDER : FileDisposition.ATTACH).get();
            if (ftMessage == null) {
                Log.e(str2, "attachFileToGroupChat failed, return null!");
                return null;
            }
            OneToOneFileTransferImpl oneToOneFileTransferImpl = new OneToOneFileTransferImpl(ftMessage, this.mImModule);
            addFileTransferingSession(String.valueOf(ftMessage.getId()), oneToOneFileTransferImpl);
            return oneToOneFileTransferImpl;
        } catch (InterruptedException e) {
            e.printStackTrace();
            return null;
        } catch (ExecutionException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public boolean isAllowedTotransferFile(ContactId contactId) throws ServerApiException {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            Capabilities ownCapabilities = ImsRegistry.getServiceModuleManager().getCapabilityDiscoveryModule().getOwnCapabilities();
            if (ownCapabilities != null) {
                if (ownCapabilities.hasFeature(Capabilities.FEATURE_FT)) {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                    return true;
                }
            }
            Binder.restoreCallingIdentity(clearCallingIdentity);
            return false;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    public boolean canTransferFileToGroupChat(String str) throws ServerApiException {
        if (ImCache.getInstance().getImSession(str) != null) {
            return true;
        }
        Log.d(LOG_TAG, "attachFileToGroupChat: chat not exist - " + str);
        return false;
    }

    public void markFileTransferAsRead(String str) throws ServerApiException {
        FtMessage ftMessage = ImCache.getInstance().getFtMessage(Integer.valueOf(str).intValue());
        if (ftMessage == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        this.mImModule.readMessages(ftMessage.getChatId(), arrayList);
        ftMessage.updateNotificationStatus(NotificationStatus.DELIVERED);
        this.mOneToOneFileTransferBroadcaster.broadcastTransferStateChanged(new ContactId(PhoneUtils.extractNumberFromUri(getImSessionByChatId(ftMessage.getChatId()))), str, FileTransfer.State.DISPLAYED, FileTransfer.ReasonCode.UNSPECIFIED);
    }

    public void notifyChangeForDelete() {
        this.mContext.getContentResolver().notifyChange(FileTransferLog.CONTENT_URI, null);
    }

    public void deleteOneToOneFileTransfers() throws ServerApiException {
        Log.d(LOG_TAG, "start : deleteOneToOneFileTransfers()");
        Map<String, Set<String>> fileTransfers = getFileTransfers(false, "is_filetransfer = 1");
        if (fileTransfers != null) {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<String, Set<String>> entry : fileTransfers.entrySet()) {
                arrayList.addAll(entry.getValue());
                String imSessionByChatId = getImSessionByChatId(entry.getKey());
                synchronized (this.mLock) {
                    this.mOneToOneFileTransferBroadcaster.broadcastDeleted(PhoneUtils.extractNumberFromUri(imSessionByChatId), entry.getValue());
                }
            }
            this.mImModule.deleteMessages(arrayList, false);
            removeFileTransferingSessions(arrayList);
            notifyChangeForDelete();
        }
    }

    public void deleteGroupFileTransfers() throws ServerApiException {
        Log.d(LOG_TAG, "start : deleteGroupFileTransfers()");
        Map<String, Set<String>> fileTransfers = getFileTransfers(true, "is_filetransfer = 1");
        if (fileTransfers != null) {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<String, Set<String>> entry : fileTransfers.entrySet()) {
                arrayList.addAll(entry.getValue());
                synchronized (this.mLock) {
                    this.mGroupFileTransferBroadcaster.broadcastDeleted(entry.getKey(), entry.getValue());
                }
            }
            this.mImModule.deleteMessages(arrayList, false);
            removeFileTransferingSessions(arrayList);
            notifyChangeForDelete();
        }
    }

    public void deleteOneToOneFileTransfersByContactId(ContactId contactId) throws ServerApiException {
        String str = LOG_TAG;
        Log.d(str, "start : deleteOneToOneFileTransfersByContactId()");
        String str2 = "tel:" + PhoneUtils.extractNumberFromUri(contactId.toString());
        HashSet hashSet = new HashSet();
        hashSet.add(ImsUri.parse(str2));
        ImSession imSessionByParticipants = ImCache.getInstance().getImSessionByParticipants(hashSet, ChatData.ChatType.ONE_TO_ONE_CHAT, "");
        if (imSessionByParticipants == null) {
            Log.e(str, "deleteOneToOneFileTransfersByContactId, no session for ft");
            return;
        }
        Map<String, Set<String>> fileTransfers = getFileTransfers(false, "is_filetransfer = 1 and chat_id = '" + imSessionByParticipants.getChatId() + "'");
        if (fileTransfers != null) {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<String, Set<String>> entry : fileTransfers.entrySet()) {
                arrayList.addAll(entry.getValue());
                String imSessionByChatId = getImSessionByChatId(entry.getKey());
                synchronized (this.mLock) {
                    this.mOneToOneFileTransferBroadcaster.broadcastDeleted(PhoneUtils.extractNumberFromUri(imSessionByChatId), entry.getValue());
                }
            }
            this.mImModule.deleteMessages(arrayList, false);
            removeFileTransferingSessions(arrayList);
            notifyChangeForDelete();
        }
    }

    public void deleteGroupFileTransfersByChatId(String str) throws ServerApiException {
        Log.d(LOG_TAG, "start : deleteGroupFileTransfersByChatId()");
        Map<String, Set<String>> fileTransfers = getFileTransfers(true, "is_filetransfer = 1 and chat_id = '" + str + "'");
        if (fileTransfers != null) {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<String, Set<String>> entry : fileTransfers.entrySet()) {
                arrayList.addAll(entry.getValue());
                synchronized (this.mLock) {
                    this.mGroupFileTransferBroadcaster.broadcastDeleted(entry.getKey(), entry.getValue());
                }
            }
            this.mImModule.deleteMessages(arrayList, false);
            removeFileTransferingSessions(arrayList);
            notifyChangeForDelete();
        }
    }

    public void deleteFileTransfer(String str) throws ServerApiException {
        Log.d(LOG_TAG, "start : deleteFileTransfer()");
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        this.mImModule.deleteMessages(arrayList, false);
        OneToOneFileTransferImpl fileTransferByID = getFileTransferByID(str);
        if (fileTransferByID == null) {
            return;
        }
        HashSet hashSet = new HashSet();
        hashSet.add(str);
        try {
            boolean isGroupTransfer = fileTransferByID.isGroupTransfer();
            String chatId = fileTransferByID.getChatId();
            ContactId remoteContact = fileTransferByID.getRemoteContact();
            if (isGroupTransfer) {
                this.mGroupFileTransferBroadcaster.broadcastDeleted(chatId, hashSet);
            } else if (remoteContact == null) {
                return;
            } else {
                this.mOneToOneFileTransferBroadcaster.broadcastDeleted(remoteContact.toString(), hashSet);
            }
            removeFileTransferingSessions(arrayList);
            notifyChangeForDelete();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void setAutoAccept(boolean z) throws ServerApiException {
        if (!isFtAutoAcceptedModeChangeable()) {
            throw new ServerApiException("Auto accept mode is not changeable");
        }
        this.mImModule.setAutoAcceptFt(1);
    }

    public void setAutoAcceptInRoaming(boolean z) throws ServerApiException {
        if (!isFtAutoAcceptedModeChangeable()) {
            throw new ServerApiException("Auto accept mode is not changeable");
        }
        if (!isFileTransferAutoAccepted()) {
            throw new ServerApiException("Auto accept mode in normal conditions must be enabled");
        }
        this.mImModule.setAutoAcceptFt(2);
    }

    public void setImageResizeOption(int i) throws ServerApiException {
        ContentValues contentValues = new ContentValues();
        contentValues.put(ImSettings.KEY_IMAGE_RESIZE_OPTION, String.valueOf(i));
        this.mContext.getContentResolver().insert(ConfigConstants.CONTENT_URI, contentValues);
    }

    public List<String> getUndeliveredFileTransfers(ContactId contactId) throws ServerApiException {
        Log.d(LOG_TAG, "start : getUndeliveredFileTransfers()");
        ImsUri parse = ImsUri.parse("tel:" + contactId.toString());
        HashSet hashSet = new HashSet();
        hashSet.add(parse);
        ImSession imSessionByParticipants = ImCache.getInstance().getImSessionByParticipants(hashSet, ChatData.ChatType.ONE_TO_ONE_CHAT, "");
        ArrayList arrayList = new ArrayList();
        if (imSessionByParticipants == null) {
            return arrayList;
        }
        Cursor queryMessages = ImCache.getInstance().queryMessages(new String[]{"_id"}, "chat_id = '" + imSessionByParticipants.getChatId() + "' and notification_status = " + NotificationStatus.NONE.getId() + " and direction = " + ImDirection.OUTGOING.getId() + " and " + ImContract.ChatItem.IS_FILE_TRANSFER + " = 1", null, null);
        if (queryMessages != null) {
            while (queryMessages.moveToNext()) {
                try {
                    arrayList.add(String.valueOf(queryMessages.getInt(queryMessages.getColumnIndexOrThrow("_id"))));
                } catch (Throwable th) {
                    try {
                        queryMessages.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
        }
        if (queryMessages != null) {
            queryMessages.close();
        }
        return arrayList;
    }

    public void markUndeliveredFileTransfersAsProcessed(List<String> list) throws ServerApiException {
        Log.d(LOG_TAG, "start : markUndeliveredFileTransfersAsProcessed()");
        ImCache imCache = ImCache.getInstance();
        for (String str : list) {
            ImMessage imMessage = imCache.getImMessage(Integer.valueOf(str).intValue());
            if (imMessage != null) {
                imMessage.updateStatus(ImConstants.Status.SENT);
                imCache.removeFromPendingList(Integer.valueOf(str).intValue());
            }
        }
    }

    public void handleTransferState(FtMessage ftMessage) {
        FileTransfer.ReasonCode ftCancelReasonTranslator;
        CancelReason cancelReason = ftMessage.getCancelReason();
        FtRejectReason rejectReason = ftMessage.getRejectReason();
        FileTransfer.ReasonCode reasonCode = FileTransfer.ReasonCode.UNSPECIFIED;
        int stateId = ftMessage.getStateId();
        ImDirection direction = ftMessage.getDirection();
        if (rejectReason != null) {
            ftCancelReasonTranslator = ftRejectReasonTranslator(rejectReason);
        } else {
            ftCancelReasonTranslator = ftCancelReasonTranslator(cancelReason);
        }
        FileTransfer.State state = FileTransfer.State.FAILED;
        switch (stateId) {
            case 0:
            case 6:
                if (ImDirection.INCOMING == direction) {
                    state = FileTransfer.State.INVITED;
                    break;
                } else {
                    state = FileTransfer.State.INITIATING;
                    break;
                }
            case 1:
                if (ImDirection.INCOMING == direction) {
                    state = FileTransfer.State.ACCEPTING;
                    break;
                }
                break;
            case 2:
            case 9:
                state = FileTransfer.State.STARTED;
                break;
            case 3:
                state = FileTransfer.State.TRANSFERRED;
                break;
            case 4:
            case 7:
                state = FileTransfer.State.ABORTED;
                break;
            case 5:
            case 8:
                state = FileTransfer.State.QUEUED;
                break;
        }
        ContactId contactId = new ContactId(PhoneUtils.extractNumberFromUri(getImSessionByChatId(ftMessage.getChatId())));
        ImSession imSession = ImCache.getInstance().getImSession(ftMessage.getChatId());
        if (imSession == null) {
            Log.d(LOG_TAG, "handleTransferState: " + state + ", cannot get ImSession from chatId : " + ftMessage.getChatId());
            return;
        }
        UserHandle subscriptionUserHandle = TelephonyUtilsWrapper.getSubscriptionUserHandle(this.mContext, SimUtil.getSubId(this.mImModule.getPhoneIdByIMSI(imSession.getOwnImsi())));
        if (subscriptionUserHandle == null) {
            subscriptionUserHandle = ContextExt.CURRENT_OR_SELF;
        }
        if (imSession.isGroupChat()) {
            this.mGroupFileTransferBroadcaster.broadcastTransferStateChanged(ftMessage.getChatId(), String.valueOf(ftMessage.getId()), state, ftCancelReasonTranslator);
        } else {
            this.mOneToOneFileTransferBroadcaster.broadcastTransferStateChanged(contactId, String.valueOf(ftMessage.getId()), state, ftCancelReasonTranslator);
        }
        this.mOneToOneFileTransferBroadcaster.broadcastUndeliveredFileTransfer(contactId, subscriptionUserHandle);
        removeFileTransferingSession(String.valueOf(ftMessage.getId()));
    }

    public void handleTransferingProgress(FtMessage ftMessage) {
        long transferredBytes = ftMessage.getTransferredBytes();
        long fileSize = ftMessage.getFileSize();
        ContactId contactId = new ContactId(PhoneUtils.extractNumberFromUri(getImSessionByChatId(ftMessage.getChatId())));
        ImSession imSession = ImCache.getInstance().getImSession(ftMessage.getChatId());
        if (imSession == null) {
            Log.d(LOG_TAG, "handleTransferingProgress, cannot get ImSession from chatId : " + ftMessage.getChatId());
            return;
        }
        if (imSession.isGroupChat()) {
            this.mGroupFileTransferBroadcaster.broadcastTransferprogress(ftMessage.getChatId(), String.valueOf(ftMessage.getId()), transferredBytes, fileSize);
        } else {
            this.mOneToOneFileTransferBroadcaster.broadcastTransferprogress(contactId, String.valueOf(ftMessage.getId()), transferredBytes, fileSize);
        }
    }

    public void handleContentTransfered(FtMessage ftMessage) {
        ContactId contactId = new ContactId(PhoneUtils.extractNumberFromUri(getImSessionByChatId(ftMessage.getChatId())));
        ImSession imSession = ImCache.getInstance().getImSession(ftMessage.getChatId());
        if (imSession == null) {
            Log.d(LOG_TAG, "handleContentTransfered, cannot get ImSession from chatId : " + ftMessage.getChatId());
            return;
        }
        if (imSession.isGroupChat()) {
            this.mGroupFileTransferBroadcaster.broadcastTransferStateChanged(ftMessage.getChatId(), String.valueOf(ftMessage.getId()), FileTransfer.State.TRANSFERRED, FileTransfer.ReasonCode.UNSPECIFIED);
        } else {
            this.mOneToOneFileTransferBroadcaster.broadcastTransferStateChanged(contactId, String.valueOf(ftMessage.getId()), FileTransfer.State.TRANSFERRED, FileTransfer.ReasonCode.UNSPECIFIED);
        }
    }

    public void handleTransferReceived(FtMessage ftMessage) {
        ContactId contactId = new ContactId(PhoneUtils.extractNumberFromUri(getImSessionByChatId(ftMessage.getChatId())));
        ImSession imSession = ImCache.getInstance().getImSession(ftMessage.getChatId());
        if (imSession == null) {
            Log.d(LOG_TAG, "handleTransferReceived, cannot get ImSession from chatId : " + ftMessage.getChatId());
            return;
        }
        UserHandle subscriptionUserHandle = TelephonyUtilsWrapper.getSubscriptionUserHandle(this.mContext, SimUtil.getSubId(this.mImModule.getPhoneIdByIMSI(imSession.getOwnImsi())));
        if (subscriptionUserHandle == null) {
            subscriptionUserHandle = ContextExt.CURRENT_OR_SELF;
        }
        if (imSession.isGroupChat()) {
            this.mGroupFileTransferBroadcaster.broadcastTransferStateChanged(ftMessage.getChatId(), String.valueOf(ftMessage.getId()), FileTransfer.State.INVITED, FileTransfer.ReasonCode.UNSPECIFIED);
            this.mGroupFileTransferBroadcaster.broadcastFileTransferInvitation(String.valueOf(ftMessage.getId()), subscriptionUserHandle);
        } else {
            this.mOneToOneFileTransferBroadcaster.broadcastTransferStateChanged(contactId, String.valueOf(ftMessage.getId()), FileTransfer.State.INVITED, FileTransfer.ReasonCode.UNSPECIFIED);
            this.mOneToOneFileTransferBroadcaster.broadcastFileTransferInvitation(String.valueOf(ftMessage.getId()), subscriptionUserHandle);
        }
    }

    public void handleMessageDeliveryStatus(MessageBase messageBase, NotificationStatus notificationStatus) {
        ContactId contactId = new ContactId(PhoneUtils.extractNumberFromUri(getImSessionByChatId(messageBase.getChatId())));
        FileTransfer.State state = FileTransfer.State.FAILED;
        if (NotificationStatus.DELIVERED == notificationStatus) {
            state = FileTransfer.State.DELIVERED;
        } else if (NotificationStatus.DISPLAYED == notificationStatus) {
            state = FileTransfer.State.DISPLAYED;
        }
        synchronized (this.mLock) {
            ImSession imSession = ImCache.getInstance().getImSession(messageBase.getChatId());
            if (imSession == null) {
                Log.d(LOG_TAG, "handleMessageDeliveryStatus: " + state + ", cannot get ImSession from chatId : " + messageBase.getChatId());
                return;
            }
            if (imSession.isGroupChat()) {
                this.mGroupFileTransferBroadcaster.broadcastGroupDeliveryInfoStateChanged(messageBase.getChatId(), String.valueOf(messageBase.getId()), contactId, GroupDeliveryInfo.Status.DELIVERED, GroupDeliveryInfo.ReasonCode.UNSPECIFIED);
                if (messageBase.getNotDisplayedCounter() == 0) {
                    this.mGroupFileTransferBroadcaster.broadcastTransferStateChanged(messageBase.getChatId(), String.valueOf(messageBase.getId()), state, FileTransfer.ReasonCode.UNSPECIFIED);
                }
            } else {
                this.mOneToOneFileTransferBroadcaster.broadcastTransferStateChanged(contactId, String.valueOf(messageBase.getId()), state, FileTransfer.ReasonCode.UNSPECIFIED);
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onFileTransferCreated(FtMessage ftMessage) {
        if (mIFtSessions.containsKey(String.valueOf(ftMessage.getId()))) {
            this.mImModule.sendFile(ftMessage.getImdnId());
            ImSession imSession = ImCache.getInstance().getImSession(ftMessage.getChatId());
            if (imSession == null) {
                Log.d(LOG_TAG, "onFileTransferCreated, cannot get ImSession from chatId : " + ftMessage.getChatId());
                return;
            }
            if (imSession.isGroupChat()) {
                this.mGroupFileTransferBroadcaster.broadcastTransferStateChanged(ftMessage.getChatId(), String.valueOf(ftMessage.getId()), FileTransfer.State.STARTED, FileTransfer.ReasonCode.UNSPECIFIED);
            } else {
                this.mOneToOneFileTransferBroadcaster.broadcastTransferStateChanged(new ContactId(PhoneUtils.extractNumberFromUri(getImSessionByChatId(ftMessage.getChatId()))), String.valueOf(ftMessage.getId()), FileTransfer.State.STARTED, FileTransfer.ReasonCode.UNSPECIFIED);
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onFileTransferReceived(FtMessage ftMessage) {
        addFileTransferingSession(String.valueOf(ftMessage.getId()), new OneToOneFileTransferImpl(ftMessage, this.mImModule));
        handleTransferReceived(ftMessage);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onTransferProgressReceived(FtMessage ftMessage) {
        handleTransferingProgress(ftMessage);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onTransferCompleted(FtMessage ftMessage) {
        handleContentTransfered(ftMessage);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onTransferCanceled(FtMessage ftMessage) {
        handleTransferState(ftMessage);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onImdnNotificationReceived(FtMessage ftMessage, ImsUri imsUri, NotificationStatus notificationStatus, boolean z) {
        handleMessageDeliveryStatus(ftMessage, ftMessage.getNotificationStatus());
    }

    public static FileTransfer.ReasonCode ftCancelReasonTranslator(CancelReason cancelReason) {
        switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[cancelReason.ordinal()]) {
            case 1:
                return FileTransfer.ReasonCode.ABORTED_BY_USER;
            case 2:
                return FileTransfer.ReasonCode.ABORTED_BY_REMOTE;
            case 3:
                return FileTransfer.ReasonCode.ABORTED_BY_SYSTEM;
            case 4:
                return FileTransfer.ReasonCode.REJECTED_BY_REMOTE;
            case 5:
                return FileTransfer.ReasonCode.REJECTED_BY_TIMEOUT;
            case 6:
                return FileTransfer.ReasonCode.REJECTED_LOW_SPACE;
            case 7:
                return FileTransfer.ReasonCode.REJECTED_MAX_SIZE;
            default:
                return FileTransfer.ReasonCode.UNSPECIFIED;
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.tapi.service.api.FileTransferingServiceImpl$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason;
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$FtRejectReason;

        static {
            int[] iArr = new int[FtRejectReason.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$FtRejectReason = iArr;
            try {
                iArr[FtRejectReason.FORBIDDEN_MAX_SIZE_EXCEEDED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$FtRejectReason[FtRejectReason.DECLINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[CancelReason.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason = iArr2;
            try {
                iArr2[CancelReason.CANCELED_BY_USER.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.CANCELED_BY_REMOTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.CANCELED_BY_SYSTEM.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.REJECTED_BY_REMOTE.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.TIME_OUT.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.LOW_MEMORY.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.TOO_LARGE.ordinal()] = 7;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.NOT_AUTHORIZED.ordinal()] = 8;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.REMOTE_BLOCKED.ordinal()] = 9;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.ERROR.ordinal()] = 10;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.REMOTE_TEMPORARILY_UNAVAILABLE.ordinal()] = 11;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.VALIDITY_EXPIRED.ordinal()] = 12;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.INVALID_REQUEST.ordinal()] = 13;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.REMOTE_USER_INVALID.ordinal()] = 14;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.NO_RESPONSE.ordinal()] = 15;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.FORBIDDEN_NO_RETRY_FALLBACK.ordinal()] = 16;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.CONTENT_REACHED_DOWNSIZE.ordinal()] = 17;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.LOCALLY_ABORTED.ordinal()] = 18;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.CONNECTION_RELEASED.ordinal()] = 19;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.DEVICE_UNREGISTERED.ordinal()] = 20;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.UNKNOWN.ordinal()] = 21;
            } catch (NoSuchFieldError unused23) {
            }
        }
    }

    public static FileTransfer.ReasonCode ftRejectReasonTranslator(FtRejectReason ftRejectReason) {
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$FtRejectReason[ftRejectReason.ordinal()];
        if (i == 1) {
            return FileTransfer.ReasonCode.REJECTED_MAX_SIZE;
        }
        if (i == 2) {
            return FileTransfer.ReasonCode.FAILED_INITIATION;
        }
        return FileTransfer.ReasonCode.UNSPECIFIED;
    }

    public String getImSessionByChatId(String str) {
        ImSession imSession = ImCache.getInstance().getImSession(str);
        if (imSession == null) {
            return null;
        }
        List<String> participantsString = imSession.getParticipantsString();
        if (participantsString.size() > 0) {
            return participantsString.get(0);
        }
        return null;
    }

    public Map<String, Set<String>> getFileTransfers(boolean z, String str) {
        ImCache imCache = ImCache.getInstance();
        TreeMap treeMap = new TreeMap();
        Cursor queryMessages = imCache.queryMessages(new String[]{"_id", "chat_id"}, str, null, null);
        if (queryMessages != null) {
            try {
                if (queryMessages.getCount() != 0) {
                    while (queryMessages.moveToNext()) {
                        String string = queryMessages.getString(queryMessages.getColumnIndexOrThrow("chat_id"));
                        ImSession imSession = imCache.getImSession(string);
                        if (imSession != null && imSession.isGroupChat() == z) {
                            addRecord(string, String.valueOf(queryMessages.getInt(queryMessages.getColumnIndexOrThrow("_id"))), treeMap);
                        }
                    }
                    queryMessages.close();
                    return treeMap;
                }
            } catch (Throwable th) {
                if (queryMessages != null) {
                    try {
                        queryMessages.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        Log.e(LOG_TAG, "getFileTransfers: Message not found.");
        if (queryMessages != null) {
            queryMessages.close();
        }
        return null;
    }

    private void addRecord(String str, String str2, Map<String, Set<String>> map) {
        Set<String> set = map.get(str);
        if (set == null) {
            HashSet hashSet = new HashSet();
            hashSet.add(str2);
            map.put(str, hashSet);
            return;
        }
        set.add(str2);
    }

    public boolean isFtAutoAcceptedModeChangeable() {
        RcsSettingsUtils rcsSettingsUtils = RcsSettingsUtils.getInstance();
        if (rcsSettingsUtils != null) {
            return Boolean.parseBoolean(rcsSettingsUtils.readParameter(ImSettings.AUTO_ACCEPT_FT_CHANGEABLE));
        }
        return false;
    }

    public boolean isFileTransferAutoAccepted() {
        return this.mImModule.getImConfig().isFtAutAccept();
    }

    public boolean isAllowedToTransferFile(ContactId contactId) throws RemoteException {
        if (contactId == null) {
            return false;
        }
        Capabilities capabilities = ImsRegistry.getServiceModuleManager().getCapabilityDiscoveryModule().getCapabilities(contactId.toString(), Capabilities.FEATURE_FT, SimUtil.getActiveDataPhoneId());
        return capabilities != null && capabilities.hasFeature(Capabilities.FEATURE_FT);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.gsma.services.rcs.filetransfer.IFileTransfer transferAudioMessage(com.gsma.services.rcs.contact.ContactId r17, android.net.Uri r18) throws android.os.RemoteException {
        /*
            r16 = this;
            r1 = r16
            r0 = r18
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "tel:"
            r2.append(r3)
            java.lang.String r3 = r17.toString()
            java.lang.String r3 = com.sec.internal.ims.util.PhoneUtils.extractNumberFromUri(r3)
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            android.content.Context r3 = r1.mContext
            java.lang.String r3 = com.sec.internal.ims.servicemodules.tapi.service.utils.FileUtils.getFilePathFromUri(r3, r0)
            java.lang.String r4 = com.sec.internal.ims.servicemodules.tapi.service.utils.FileUtils.getFileNameFromPath(r3)
            java.lang.String r3 = com.sec.internal.ims.servicemodules.tapi.service.api.FileTransferingServiceImpl.LOG_TAG
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "transferAudioMessage, contentUri = "
            r5.append(r6)
            r5.append(r0)
            java.lang.String r5 = r5.toString()
            android.util.Log.d(r3, r5)
            com.sec.internal.interfaces.ims.servicemodules.im.IImModule r3 = r1.mImModule
            r5 = 0
            com.sec.ims.util.ImsUri r6 = com.sec.ims.util.ImsUri.parse(r2)
            com.sec.internal.constants.ims.servicemodules.im.NotificationStatus r2 = com.sec.internal.constants.ims.servicemodules.im.NotificationStatus.DELIVERED
            com.sec.internal.constants.ims.servicemodules.im.NotificationStatus r7 = com.sec.internal.constants.ims.servicemodules.im.NotificationStatus.DISPLAYED
            java.util.EnumSet r7 = java.util.EnumSet.of(r2, r7)
            r8 = 0
            java.lang.String r9 = "application/audio-message"
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            com.sec.internal.constants.ims.servicemodules.im.FileDisposition r15 = com.sec.internal.constants.ims.servicemodules.im.FileDisposition.ATTACH
            r2 = r3
            r3 = r5
            r5 = r18
            java.util.concurrent.Future r0 = r2.attachFileToSingleChat(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15)
            r2 = 0
            java.lang.Object r0 = r0.get()     // Catch: java.util.concurrent.ExecutionException -> L70 java.lang.InterruptedException -> L75
            com.sec.internal.ims.servicemodules.im.FtMessage r0 = (com.sec.internal.ims.servicemodules.im.FtMessage) r0     // Catch: java.util.concurrent.ExecutionException -> L70 java.lang.InterruptedException -> L75
            int r0 = r0.getId()     // Catch: java.util.concurrent.ExecutionException -> L70 java.lang.InterruptedException -> L75
            java.lang.String r0 = java.lang.String.valueOf(r0)     // Catch: java.util.concurrent.ExecutionException -> L70 java.lang.InterruptedException -> L75
            goto L7a
        L70:
            r0 = move-exception
            r0.printStackTrace()
            goto L79
        L75:
            r0 = move-exception
            r0.printStackTrace()
        L79:
            r0 = r2
        L7a:
            if (r0 != 0) goto L84
            java.lang.String r0 = com.sec.internal.ims.servicemodules.tapi.service.api.FileTransferingServiceImpl.LOG_TAG
            java.lang.String r1 = "attachFileToSingleChat failed, return null!"
            android.util.Log.e(r0, r1)
            return r2
        L84:
            com.sec.internal.ims.servicemodules.tapi.service.api.OneToOneFileTransferImpl r2 = new com.sec.internal.ims.servicemodules.tapi.service.api.OneToOneFileTransferImpl
            com.sec.internal.interfaces.ims.servicemodules.im.IImModule r1 = r1.mImModule
            r2.<init>(r0, r1)
            addFileTransferingSession(r0, r2)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.tapi.service.api.FileTransferingServiceImpl.transferAudioMessage(com.gsma.services.rcs.contact.ContactId, android.net.Uri):com.gsma.services.rcs.filetransfer.IFileTransfer");
    }
}

package com.sec.internal.ims.cmstore.omanetapi.devicedataupdateHandler;

import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants;
import com.sec.internal.constants.ims.cmstore.data.FlagNames;
import com.sec.internal.constants.ims.cmstore.data.OperationEnum;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageBulkDeletion;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageBulkUpdate;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageDeleteIndividualObject;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageDeleteObjectFlag;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessagePutObjectFlag;
import com.sec.internal.ims.cmstore.omanetapi.nms.McsPostGroupSMS;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParamList;
import com.sec.internal.ims.cmstore.params.ParamObjectUpload;
import com.sec.internal.interfaces.ims.cmstore.ICloudMessageManagerHelper;
import com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener;
import com.sec.internal.omanetapi.nms.data.BulkDelete;
import com.sec.internal.omanetapi.nms.data.BulkUpdate;
import com.sec.internal.omanetapi.nms.data.Reference;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class OMAObjectUpdateScheduler extends BaseDeviceDataUpdateHandler {
    private String TAG;
    private ICloudMessageManagerHelper mICloudMessageManagerHelper;

    public OMAObjectUpdateScheduler(Looper looper, MessageStoreClient messageStoreClient, INetAPIEventListener iNetAPIEventListener, String str, SyncMsgType syncMsgType, ICloudMessageManagerHelper iCloudMessageManagerHelper) {
        super(looper, messageStoreClient, iNetAPIEventListener, str, syncMsgType, iCloudMessageManagerHelper);
        this.TAG = OMAObjectUpdateScheduler.class.getSimpleName();
        this.mICloudMessageManagerHelper = iCloudMessageManagerHelper;
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
    }

    @Override // com.sec.internal.ims.cmstore.omanetapi.devicedataupdateHandler.BaseDeviceDataUpdateHandler
    protected void setWorkingQueue(BufferDBChangeParam bufferDBChangeParam) {
        Log.i(this.TAG, "setWorkingQueue param: " + bufferDBChangeParam);
        if (bufferDBChangeParam == null) {
            return;
        }
        boolean z = this.isCmsEnabled;
        if (z && bufferDBChangeParam.mIsGroupSMSUpload) {
            this.mWorkingQueue.offer(new McsPostGroupSMS(this, new ParamObjectUpload(this.mBufferDBTranslation.getGroupSMSForSteadyUpload(bufferDBChangeParam), bufferDBChangeParam), this.mStoreClient));
            return;
        }
        if (z && bufferDBChangeParam.mDBIndex == 10) {
            Pair<String, String> sessionObjectIdFromBufDb = this.mBufferDBTranslation.getSessionObjectIdFromBufDb(bufferDBChangeParam);
            this.mWorkingQueue.offer(new CloudMessagePutObjectFlag(this, (String) sessionObjectIdFromBufDb.first, (String) sessionObjectIdFromBufDb.second, bufferDBChangeParam, this.mStoreClient));
            return;
        }
        Pair<String, String> objectIdFlagNamePairFromBufDb = this.mBufferDBTranslation.getObjectIdFlagNamePairFromBufDb(bufferDBChangeParam);
        Log.i(this.TAG, "setWorkingQueue " + ((String) objectIdFlagNamePairFromBufDb.first) + ((String) objectIdFlagNamePairFromBufDb.second));
        if (TextUtils.isEmpty((CharSequence) objectIdFlagNamePairFromBufDb.first) || TextUtils.isEmpty((CharSequence) objectIdFlagNamePairFromBufDb.second)) {
            return;
        }
        Object obj = objectIdFlagNamePairFromBufDb.second;
        String str = FlagNames.Seen;
        if (FlagNames.Seen.equals(obj) || FlagNames.Canceled.equals(objectIdFlagNamePairFromBufDb.second) || ((FlagNames.Starred.equals(objectIdFlagNamePairFromBufDb.second) && bufferDBChangeParam.mAction == CloudMessageBufferDBConstants.ActionStatusFlag.Starred) || ((FlagNames.Spam.equals(objectIdFlagNamePairFromBufDb.second) && bufferDBChangeParam.mAction == CloudMessageBufferDBConstants.ActionStatusFlag.Spam) || (FlagNames.Trash.equals(objectIdFlagNamePairFromBufDb.second) && bufferDBChangeParam.mAction == CloudMessageBufferDBConstants.ActionStatusFlag.Trash)))) {
            this.mWorkingQueue.offer(new CloudMessagePutObjectFlag(this, (String) objectIdFlagNamePairFromBufDb.first, (String) objectIdFlagNamePairFromBufDb.second, bufferDBChangeParam, this.mStoreClient));
            return;
        }
        if (FlagNames.Deleted.equals(objectIdFlagNamePairFromBufDb.second)) {
            this.mWorkingQueue.offer(new CloudMessageDeleteIndividualObject(this, (String) objectIdFlagNamePairFromBufDb.first, bufferDBChangeParam, this.mStoreClient));
            return;
        }
        if (FlagNames.Flagged.equals(objectIdFlagNamePairFromBufDb.second) || FlagNames.Starred.equals(objectIdFlagNamePairFromBufDb.second) || FlagNames.Trash.equals(objectIdFlagNamePairFromBufDb.second)) {
            if (!FlagNames.Flagged.equals(objectIdFlagNamePairFromBufDb.second)) {
                str = (String) objectIdFlagNamePairFromBufDb.second;
            }
            this.mWorkingQueue.offer(new CloudMessageDeleteObjectFlag(this, (String) objectIdFlagNamePairFromBufDb.first, str, bufferDBChangeParam, this.mStoreClient));
        }
    }

    @Override // com.sec.internal.ims.cmstore.omanetapi.devicedataupdateHandler.BaseDeviceDataUpdateHandler
    protected void setWorkingQueue(BufferDBChangeParamList bufferDBChangeParamList) {
        ArrayList<BufferDBChangeParam> arrayList;
        String str;
        Iterator<BufferDBChangeParam> it;
        String str2;
        if (bufferDBChangeParamList == null || (arrayList = bufferDBChangeParamList.mChangelst) == null || arrayList.size() == 0) {
            return;
        }
        Log.i(this.TAG, "setWorkingQueue  isBulkUpdateEnabled: " + this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isBulkUpdateEnabled() + "mChangelst size: " + bufferDBChangeParamList.mChangelst.size());
        if (bufferDBChangeParamList.mChangelst.size() == 1) {
            setWorkingQueue(bufferDBChangeParamList.mChangelst.get(0));
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        BufferDBChangeParamList bufferDBChangeParamList2 = new BufferDBChangeParamList();
        BufferDBChangeParamList bufferDBChangeParamList3 = new BufferDBChangeParamList();
        BufferDBChangeParamList bufferDBChangeParamList4 = new BufferDBChangeParamList();
        Iterator<BufferDBChangeParam> it2 = bufferDBChangeParamList.mChangelst.iterator();
        String str3 = "";
        String str4 = "";
        while (it2.hasNext()) {
            BufferDBChangeParam next = it2.next();
            if (next != null) {
                Pair<String, String> resourceUrlFlagNamePairFromBufDb = this.mBufferDBTranslation.getResourceUrlFlagNamePairFromBufDb(next);
                String str5 = (String) resourceUrlFlagNamePairFromBufDb.second;
                if (!TextUtils.isEmpty((CharSequence) resourceUrlFlagNamePairFromBufDb.first) && !TextUtils.isEmpty(str5)) {
                    if (FlagNames.Seen.equals(str5) || FlagNames.Canceled.equals(str5) || ((FlagNames.Starred.equals(str5) && next.mAction == CloudMessageBufferDBConstants.ActionStatusFlag.Starred) || ((FlagNames.Spam.equals(str5) && next.mAction == CloudMessageBufferDBConstants.ActionStatusFlag.Spam) || ((FlagNames.Trash.equals(str5) && next.mAction == CloudMessageBufferDBConstants.ActionStatusFlag.Trash) || (FlagNames.Accepted.equals(str5) && next.mAction == CloudMessageBufferDBConstants.ActionStatusFlag.Accepted))))) {
                        str = str5;
                        it = it2;
                        str2 = str3;
                        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isBulkUpdateEnabled()) {
                            Reference reference = new Reference();
                            try {
                                reference.resourceURL = new URL((String) resourceUrlFlagNamePairFromBufDb.first);
                                arrayList3.add(reference);
                                bufferDBChangeParamList3.mChangelst.add(next);
                            } catch (MalformedURLException e) {
                                Log.e(this.TAG, e.getMessage() + str2);
                                e.printStackTrace();
                            }
                        } else {
                            String str6 = (String) resourceUrlFlagNamePairFromBufDb.first;
                            this.mWorkingQueue.offer(new CloudMessagePutObjectFlag(this, str6.substring(str6.lastIndexOf(47) + 1), str, next, this.mStoreClient));
                        }
                    } else if (FlagNames.Deleted.equals(str5)) {
                        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isBulkDeleteEnabled()) {
                            Reference reference2 = new Reference();
                            try {
                                reference2.resourceURL = new URL((String) resourceUrlFlagNamePairFromBufDb.first);
                                arrayList2.add(reference2);
                                bufferDBChangeParamList2.mChangelst.add(next);
                            } catch (MalformedURLException e2) {
                                Log.e(this.TAG, e2.getMessage() + str3);
                                e2.printStackTrace();
                            }
                        } else {
                            String str7 = (String) resourceUrlFlagNamePairFromBufDb.first;
                            this.mWorkingQueue.offer(new CloudMessageDeleteIndividualObject(this, str7.substring(str7.lastIndexOf(47) + 1), next, this.mStoreClient));
                        }
                    } else if (FlagNames.Flagged.equals(str5) || FlagNames.Starred.equals(str5) || FlagNames.Trash.equals(str5)) {
                        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isBulkUpdateEnabled()) {
                            Reference reference3 = new Reference();
                            try {
                                reference3.resourceURL = new URL((String) resourceUrlFlagNamePairFromBufDb.first);
                                arrayList4.add(reference3);
                                bufferDBChangeParamList4.mChangelst.add(next);
                            } catch (MalformedURLException e3) {
                                Log.e(this.TAG, e3.getMessage() + str3);
                                e3.printStackTrace();
                            }
                        } else {
                            String str8 = (String) resourceUrlFlagNamePairFromBufDb.first;
                            str = str5;
                            it = it2;
                            str2 = str3;
                            this.mWorkingQueue.offer(new CloudMessageDeleteObjectFlag(this, str8.substring(str8.lastIndexOf(47) + 1), FlagNames.Seen, next, this.mStoreClient));
                        }
                    }
                    str3 = str2;
                    it2 = it;
                    str4 = str;
                }
                str = str5;
                it = it2;
                str2 = str3;
                str3 = str2;
                it2 = it;
                str4 = str;
            }
        }
        processBulkDelete(arrayList2, bufferDBChangeParamList2);
        processBulkSet(arrayList3, bufferDBChangeParamList3, str4);
        processBulkUnset(arrayList4, bufferDBChangeParamList4, str4);
    }

    private void processBulkDelete(List<Reference> list, BufferDBChangeParamList bufferDBChangeParamList) {
        if (list == null || list.size() < 1 || !this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isBulkDeleteEnabled()) {
            return;
        }
        int maxBulkOptionEntry = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getMaxBulkOptionEntry();
        Log.i(this.TAG, "getMaxBulkOptionEntry: " + maxBulkOptionEntry + " listsize: " + list.size());
        if (maxBulkOptionEntry <= 1) {
            maxBulkOptionEntry = 100;
        }
        int size = list.size() % maxBulkOptionEntry == 0 ? list.size() / maxBulkOptionEntry : 1 + (list.size() / maxBulkOptionEntry);
        int i = 0;
        while (i < size) {
            int i2 = i * maxBulkOptionEntry;
            i++;
            int min = Math.min(list.size(), i * maxBulkOptionEntry);
            List<Reference> subList = list.subList(i2, min);
            BufferDBChangeParamList bufferDBChangeParamList2 = new BufferDBChangeParamList();
            bufferDBChangeParamList2.mChangelst = new ArrayList<>(bufferDBChangeParamList.mChangelst.subList(i2, min));
            Log.i(this.TAG, "Start, End: " + i2 + " " + min + " newlistsize: " + subList.size());
            BulkDelete createNewBulkDeleteParam = createNewBulkDeleteParam(subList);
            Reference[] referenceArr = createNewBulkDeleteParam.objects.objectReference;
            if (referenceArr != null && referenceArr.length > 0) {
                this.mWorkingQueue.offer(new CloudMessageBulkDeletion(this, createNewBulkDeleteParam, this.mLine, this.mSyncMsgType, bufferDBChangeParamList2, this.mStoreClient));
            }
        }
    }

    private void processBulkSet(List<Reference> list, BufferDBChangeParamList bufferDBChangeParamList, String str) {
        if (list == null || list.size() < 1 || !this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isBulkUpdateEnabled()) {
            return;
        }
        int maxBulkOptionEntry = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getMaxBulkOptionEntry();
        Log.i(this.TAG, "processBulkSet: " + maxBulkOptionEntry + " listsize: " + list.size());
        if (maxBulkOptionEntry <= 1) {
            maxBulkOptionEntry = 100;
        }
        int i = maxBulkOptionEntry;
        int size = list.size() % i == 0 ? list.size() / i : (list.size() / i) + 1;
        int i2 = 0;
        while (i2 < size) {
            int i3 = i2 * i;
            int i4 = i2 + 1;
            int min = Math.min(list.size(), i4 * i);
            List<Reference> subList = list.subList(i3, min);
            BufferDBChangeParamList bufferDBChangeParamList2 = new BufferDBChangeParamList();
            bufferDBChangeParamList2.mChangelst = new ArrayList<>(bufferDBChangeParamList.mChangelst.subList(i3, min));
            Log.i(this.TAG, "Start, End: " + i3 + " " + min + " newlistsize: " + subList.size());
            BulkUpdate createNewBulkUpdateParam = createNewBulkUpdateParam(subList, new String[]{str}, OperationEnum.AddFlag);
            Reference[] referenceArr = createNewBulkUpdateParam.objects.objectReference;
            if (referenceArr != null && referenceArr.length > 0) {
                Log.i(this.TAG, "send bulk update");
                this.mWorkingQueue.offer(new CloudMessageBulkUpdate(this, createNewBulkUpdateParam, this.mLine, this.mSyncMsgType, bufferDBChangeParamList2, this.mStoreClient));
            }
            i2 = i4;
        }
    }

    private void processBulkUnset(List<Reference> list, BufferDBChangeParamList bufferDBChangeParamList, String str) {
        if (list == null || list.size() < 1 || !this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isBulkUpdateEnabled()) {
            return;
        }
        int maxBulkOptionEntry = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getMaxBulkOptionEntry();
        Log.i(this.TAG, "processBulkUnset: " + maxBulkOptionEntry + " listsize: " + list.size());
        if (maxBulkOptionEntry <= 1) {
            maxBulkOptionEntry = 100;
        }
        int i = maxBulkOptionEntry;
        int size = list.size() % i == 0 ? list.size() / i : (list.size() / i) + 1;
        int i2 = 0;
        while (i2 < size) {
            int i3 = i2 * i;
            int i4 = i2 + 1;
            int min = Math.min(list.size(), i4 * i);
            List<Reference> subList = list.subList(i3, min);
            BufferDBChangeParamList bufferDBChangeParamList2 = new BufferDBChangeParamList();
            bufferDBChangeParamList2.mChangelst = new ArrayList<>(bufferDBChangeParamList.mChangelst.subList(i3, min));
            Log.i(this.TAG, "Start, End: " + i3 + " " + min + " newlistsize: " + subList.size());
            BulkUpdate createNewBulkUpdateParam = createNewBulkUpdateParam(subList, new String[]{str}, OperationEnum.RemoveFlag);
            Reference[] referenceArr = createNewBulkUpdateParam.objects.objectReference;
            if (referenceArr != null && referenceArr.length > 0) {
                this.mWorkingQueue.offer(new CloudMessageBulkUpdate(this, createNewBulkUpdateParam, this.mLine, this.mSyncMsgType, bufferDBChangeParamList2, this.mStoreClient));
            }
            i2 = i4;
        }
    }
}

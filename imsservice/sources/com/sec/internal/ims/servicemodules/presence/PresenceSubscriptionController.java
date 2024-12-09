package com.sec.internal.ims.servicemodules.presence;

import android.util.Log;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.servicemodules.options.CapabilityConstants;
import com.sec.internal.constants.ims.servicemodules.presence.PresenceSubscription;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

/* loaded from: classes.dex */
public class PresenceSubscriptionController {
    private static final String LOG_TAG = "PresenceSubscriptionController";
    private static List<PresenceSubscription> mSubscriptionList = new ArrayList();
    private static List<PresenceSubscription> mPendingSubscriptionList = new ArrayList();
    private static Queue<ImsUri> mLazySubscriptionQueue = new LinkedList();

    PresenceSubscriptionController() {
    }

    public static class SubscriptionRequest {
        public int internalRequestId;
        public boolean isAlwaysForce;
        public int phoneId;
        public CapabilityConstants.RequestType type;
        public ImsUri uri;

        public SubscriptionRequest(ImsUri imsUri, CapabilityConstants.RequestType requestType, boolean z, int i, int i2) {
            this.uri = imsUri;
            this.type = requestType;
            this.isAlwaysForce = z;
            this.phoneId = i;
            this.internalRequestId = i2;
        }
    }

    static void addSubscription(PresenceSubscription presenceSubscription) {
        mSubscriptionList.add(presenceSubscription);
    }

    static void addLazySubscription(ImsUri imsUri) {
        synchronized (mLazySubscriptionQueue) {
            mLazySubscriptionQueue.add(imsUri);
        }
    }

    static void addPendingSubscription(PresenceSubscription presenceSubscription) {
        mPendingSubscriptionList.add(presenceSubscription);
    }

    static List<PresenceSubscription> getPendingSubscription() {
        return mPendingSubscriptionList;
    }

    static void clearPendingSubscription() {
        mPendingSubscriptionList.clear();
    }

    static PresenceSubscription getSubscription(ImsUri imsUri, boolean z, int i) {
        if (imsUri == null) {
            IMSLog.e(LOG_TAG, i, "getSubscription: uri is null");
            return null;
        }
        for (PresenceSubscription presenceSubscription : mSubscriptionList) {
            if (presenceSubscription.isSingleFetch() == z && presenceSubscription.getPhoneId() == i && (z || !presenceSubscription.isExpired())) {
                if (presenceSubscription.contains(imsUri)) {
                    return presenceSubscription;
                }
            }
        }
        return null;
    }

    static PresenceSubscription getSubscription(String str, int i) {
        if (str == null) {
            Log.e(LOG_TAG, "getSubscription: subscriptionId is null");
            return null;
        }
        for (PresenceSubscription presenceSubscription : mSubscriptionList) {
            if (presenceSubscription.getSubscriptionId().equals(str) && presenceSubscription.getPhoneId() == i) {
                return presenceSubscription;
            }
        }
        return null;
    }

    static boolean hasSubscription(ImsUri imsUri) {
        for (PresenceSubscription presenceSubscription : mSubscriptionList) {
            if (!presenceSubscription.isExpired() && presenceSubscription.contains(imsUri)) {
                return true;
            }
        }
        return false;
    }

    static void cleanExpiredSubscription() {
        Iterator<PresenceSubscription> it = mSubscriptionList.iterator();
        while (it.hasNext()) {
            PresenceSubscription next = it.next();
            if (!next.isSingleFetch() && next.getState() == 2) {
                IMSLog.s(LOG_TAG, "cleanExpiredSubscription(): expired uri " + next.getUriList() + " (" + next.getTimestamp() + ")");
                PresenceUtil.removeSubscribeResponseCallback(next.getSubscriptionId());
                it.remove();
            }
        }
    }

    static void removeSubscription(List<ImsUri> list) {
        if (list == null || list.size() == 0) {
            Log.e(LOG_TAG, "removeSubscription: uris null");
            return;
        }
        if (list.size() > 10) {
            Log.e(LOG_TAG, "removeSubscription: uris size is over " + list.size());
            return;
        }
        Iterator<PresenceSubscription> it = mSubscriptionList.iterator();
        while (it.hasNext()) {
            PresenceSubscription next = it.next();
            if (next.isSingleFetch()) {
                Iterator<ImsUri> it2 = list.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (next.contains(it2.next())) {
                            it.remove();
                            break;
                        }
                    } else {
                        break;
                    }
                }
            } else {
                for (ImsUri imsUri : list) {
                    if (next.contains(imsUri)) {
                        next.remove(imsUri);
                    }
                }
            }
        }
    }

    static boolean checkLazySubscription(ImsUri imsUri, boolean z) {
        synchronized (mLazySubscriptionQueue) {
            if (!mLazySubscriptionQueue.isEmpty() && mLazySubscriptionQueue.peek() != null && !mLazySubscriptionQueue.peek().equals(imsUri) && !z) {
                return true;
            }
            if (!mLazySubscriptionQueue.isEmpty()) {
                mLazySubscriptionQueue.remove();
            }
            return false;
        }
    }
}

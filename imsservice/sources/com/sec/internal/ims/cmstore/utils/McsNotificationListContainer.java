package com.sec.internal.ims.cmstore.utils;

import com.sec.internal.imscr.LogClass;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.nms.data.NmsEventList;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class McsNotificationListContainer {
    private static final int MAX_SIZE = 300;
    private static final String TAG = "McsNotificationListContainer";
    private static HashMap<Integer, McsNotificationListContainer> sInstance = new HashMap<>();
    private TreeMap<Long, NmsEventList> container = new TreeMap<>();

    private McsNotificationListContainer() {
    }

    public static McsNotificationListContainer getInstance(int i) {
        McsNotificationListContainer mcsNotificationListContainer;
        if (sInstance.containsKey(Integer.valueOf(i))) {
            mcsNotificationListContainer = sInstance.get(Integer.valueOf(i));
        } else {
            mcsNotificationListContainer = new McsNotificationListContainer();
            sInstance.put(Integer.valueOf(i), mcsNotificationListContainer);
        }
        IMSLog.i(TAG, "getInstance: slotId: " + i + " return instance");
        return mcsNotificationListContainer;
    }

    public synchronized void insertContainer(Long l, NmsEventList nmsEventList, int i, Long l2) {
        int size = this.container.size();
        IMSLog.i(TAG, "insertContainer, index= " + l + ", containerSize= " + size);
        if (size >= 300) {
            return;
        }
        if (size % 15 == 0) {
            IMSLog.c(LogClass.MCS_NC_CONTAINER_SIZE, i + ",insert " + size + "," + l + "," + l2);
        }
        this.container.put(l, nmsEventList);
    }

    public synchronized long peekFirstIndex() {
        if (this.container.isEmpty()) {
            return -1L;
        }
        long longValue = this.container.firstKey().longValue();
        IMSLog.i(TAG, "peekFirstIndex, index=" + longValue);
        return longValue;
    }

    public synchronized Map.Entry<Long, NmsEventList> popFirstEntry() {
        if (this.container.isEmpty()) {
            return null;
        }
        Map.Entry<Long, NmsEventList> firstEntry = this.container.firstEntry();
        IMSLog.i(TAG, "popFirstEntry, index=" + firstEntry.getKey());
        this.container.remove(firstEntry.getKey());
        return firstEntry;
    }

    public synchronized boolean isEmpty() {
        return this.container.isEmpty();
    }

    public synchronized void clear(int i) {
        if (!this.container.isEmpty()) {
            IMSLog.c(LogClass.MCS_NC_CONTAINER_SIZE, i + ",clear " + this.container.size());
        }
        this.container.clear();
    }
}

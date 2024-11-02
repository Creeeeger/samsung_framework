package com.android.settingslib.media;

import android.app.Notification;
import android.content.Context;
import android.media.MediaRoute2Info;
import android.media.MediaRouter2Manager;
import android.media.RouteListingPreference;
import android.media.RoutingSessionInfo;
import android.text.TextUtils;
import android.util.Log;
import com.android.settingslib.bluetooth.LocalBluetoothManager;
import com.android.settingslib.media.LocalMediaManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.stream.Collectors;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class InfoMediaManager extends MediaManager {
    public static final boolean DEBUG = Log.isLoggable("InfoMediaManager", 3);
    public final LocalBluetoothManager mBluetoothManager;
    public MediaDevice mCurrentConnectedDevice;
    final Executor mExecutor;
    public boolean mIsScanning;
    final RouterManagerCallback mMediaRouterCallback;
    String mPackageName;
    public final Map mPreferenceItemMap;
    MediaRouter2Manager mRouterManager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Api34Impl {
        private Api34Impl() {
        }

        public static List arrangeRouteListByPreference(List list, List list2, List list3) {
            ArrayList arrayList = new ArrayList(list);
            list2.removeAll(list);
            arrayList.addAll((Collection) list2.stream().filter(new InfoMediaManager$Api34Impl$$ExternalSyntheticLambda1()).collect(Collectors.toList()));
            Iterator it = ((ArrayList) list3).iterator();
            while (it.hasNext()) {
                RouteListingPreference.Item item = (RouteListingPreference.Item) it.next();
                Iterator it2 = list2.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        MediaRoute2Info mediaRoute2Info = (MediaRoute2Info) it2.next();
                        if (item.getRouteId().equals(mediaRoute2Info.getId()) && !list.contains(mediaRoute2Info) && !mediaRoute2Info.isSystemRoute()) {
                            arrayList.add(mediaRoute2Info);
                            break;
                        }
                    }
                }
            }
            return arrayList;
        }

        public static synchronized List filterDuplicatedIds(List list) {
            ArrayList arrayList;
            synchronized (Api34Impl.class) {
                arrayList = new ArrayList();
                HashSet hashSet = new HashSet();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    MediaRoute2Info mediaRoute2Info = (MediaRoute2Info) it.next();
                    if (Collections.disjoint(mediaRoute2Info.getDeduplicationIds(), hashSet)) {
                        arrayList.add(mediaRoute2Info);
                        hashSet.addAll(mediaRoute2Info.getDeduplicationIds());
                    }
                }
            }
            return arrayList;
        }
    }

    public InfoMediaManager(Context context, String str, Notification notification2, LocalBluetoothManager localBluetoothManager) {
        super(context, notification2);
        this.mMediaRouterCallback = new RouterManagerCallback();
        this.mExecutor = Executors.newSingleThreadExecutor();
        this.mIsScanning = false;
        this.mPreferenceItemMap = new ConcurrentHashMap();
        this.mRouterManager = MediaRouter2Manager.getInstance(context);
        this.mBluetoothManager = localBluetoothManager;
        if (!TextUtils.isEmpty(str)) {
            this.mPackageName = str;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void addMediaDevice(android.media.MediaRoute2Info r13) {
        /*
            Method dump skipped, instructions count: 324
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.settingslib.media.InfoMediaManager.addMediaDevice(android.media.MediaRoute2Info):void");
    }

    public final void buildAllRoutes() {
        for (MediaRoute2Info mediaRoute2Info : this.mRouterManager.getAllRoutes()) {
            if (DEBUG) {
                Log.d("InfoMediaManager", "buildAllRoutes() route : " + ((Object) mediaRoute2Info.getName()) + ", volume : " + mediaRoute2Info.getVolume() + ", type : " + mediaRoute2Info.getType());
            }
            if (mediaRoute2Info.isSystemRoute()) {
                addMediaDevice(mediaRoute2Info);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.List] */
    public final synchronized List getAvailableRoutes(String str) {
        ArrayList arrayList = new ArrayList();
        RoutingSessionInfo routingSessionInfo = getRoutingSessionInfo(str);
        List arrayList2 = new ArrayList();
        if (routingSessionInfo != null) {
            arrayList2 = this.mRouterManager.getSelectedRoutes(routingSessionInfo);
            arrayList.addAll(arrayList2);
            arrayList.addAll(this.mRouterManager.getSelectableRoutes(routingSessionInfo));
        }
        Iterator it = this.mRouterManager.getTransferableRoutes(str).iterator();
        while (true) {
            boolean z = false;
            if (!it.hasNext()) {
                break;
            }
            MediaRoute2Info mediaRoute2Info = (MediaRoute2Info) it.next();
            Iterator it2 = arrayList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                if (TextUtils.equals(mediaRoute2Info.getId(), ((MediaRoute2Info) it2.next()).getId())) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                arrayList.add(mediaRoute2Info);
            }
        }
        if (!TextUtils.isEmpty(this.mPackageName)) {
            RouteListingPreference routeListingPreference = this.mRouterManager.getRouteListingPreference(this.mPackageName);
            ArrayList arrayList3 = arrayList;
            if (routeListingPreference != null) {
                ArrayList arrayList4 = new ArrayList();
                for (RouteListingPreference.Item item : routeListingPreference.getItems()) {
                    if ((item.getFlags() & 4) != 0) {
                        arrayList4.add(0, item);
                    } else {
                        arrayList4.add(item);
                    }
                }
                arrayList3 = Api34Impl.arrangeRouteListByPreference(arrayList2, this.mRouterManager.getAvailableRoutes(str), arrayList4);
            }
            return Api34Impl.filterDuplicatedIds(arrayList3);
        }
        return arrayList;
    }

    public final RoutingSessionInfo getRoutingSessionInfo() {
        return getRoutingSessionInfo(this.mPackageName);
    }

    public final synchronized void refreshDevices() {
        ((CopyOnWriteArrayList) this.mMediaDevices).clear();
        this.mCurrentConnectedDevice = null;
        buildAllRoutes();
        dispatchDeviceListAdded();
    }

    public final RoutingSessionInfo getRoutingSessionInfo(String str) {
        List routingSessions = this.mRouterManager.getRoutingSessions(str);
        if (routingSessions == null || routingSessions.isEmpty()) {
            return null;
        }
        return (RoutingSessionInfo) routingSessions.get(routingSessions.size() - 1);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class RouterManagerCallback implements MediaRouter2Manager.Callback {
        public RouterManagerCallback() {
        }

        public final void onPreferredFeaturesChanged(String str, List list) {
            if (TextUtils.equals(InfoMediaManager.this.mPackageName, str)) {
                InfoMediaManager.this.refreshDevices();
            }
        }

        public final void onRequestFailed(int i) {
            InfoMediaManager infoMediaManager = InfoMediaManager.this;
            infoMediaManager.getClass();
            Iterator it = new CopyOnWriteArrayList(infoMediaManager.mCallbacks).iterator();
            while (it.hasNext()) {
                LocalMediaManager.MediaDeviceCallback mediaDeviceCallback = (LocalMediaManager.MediaDeviceCallback) it.next();
                synchronized (LocalMediaManager.this.mMediaDevicesLock) {
                    for (MediaDevice mediaDevice : LocalMediaManager.this.mMediaDevices) {
                        if (mediaDevice.mState == 1) {
                            mediaDevice.mState = 3;
                        }
                    }
                }
                Iterator it2 = ((CopyOnWriteArrayList) LocalMediaManager.this.getCallbacks()).iterator();
                while (it2.hasNext()) {
                    ((LocalMediaManager.DeviceCallback) it2.next()).onRequestFailed(i);
                }
            }
        }

        public final void onRouteListingPreferenceUpdated(String str, RouteListingPreference routeListingPreference) {
            if (TextUtils.equals(InfoMediaManager.this.mPackageName, str)) {
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) InfoMediaManager.this.mPreferenceItemMap;
                concurrentHashMap.clear();
                if (routeListingPreference != null) {
                    routeListingPreference.getItems().forEach(new InfoMediaManager$Api34Impl$$ExternalSyntheticLambda0(concurrentHashMap));
                }
                InfoMediaManager.this.refreshDevices();
            }
        }

        public final void onRoutesUpdated() {
            InfoMediaManager infoMediaManager = InfoMediaManager.this;
            boolean z = InfoMediaManager.DEBUG;
            infoMediaManager.refreshDevices();
        }

        public final void onSessionReleased(RoutingSessionInfo routingSessionInfo) {
            InfoMediaManager infoMediaManager = InfoMediaManager.this;
            boolean z = InfoMediaManager.DEBUG;
            infoMediaManager.refreshDevices();
        }

        public final void onSessionUpdated(RoutingSessionInfo routingSessionInfo) {
            InfoMediaManager infoMediaManager = InfoMediaManager.this;
            boolean z = InfoMediaManager.DEBUG;
            infoMediaManager.refreshDevices();
        }

        public final void onTransferred(RoutingSessionInfo routingSessionInfo, RoutingSessionInfo routingSessionInfo2) {
            if (InfoMediaManager.DEBUG) {
                Log.d("InfoMediaManager", "onTransferred() oldSession : " + ((Object) routingSessionInfo.getName()) + ", newSession : " + ((Object) routingSessionInfo2.getName()));
            }
            ((CopyOnWriteArrayList) InfoMediaManager.this.mMediaDevices).clear();
            InfoMediaManager infoMediaManager = InfoMediaManager.this;
            String str = null;
            infoMediaManager.mCurrentConnectedDevice = null;
            if (TextUtils.isEmpty(infoMediaManager.mPackageName)) {
                InfoMediaManager.this.buildAllRoutes();
            } else {
                InfoMediaManager infoMediaManager2 = InfoMediaManager.this;
                synchronized (infoMediaManager2) {
                    Iterator it = ((ArrayList) infoMediaManager2.getAvailableRoutes(infoMediaManager2.mPackageName)).iterator();
                    while (it.hasNext()) {
                        MediaRoute2Info mediaRoute2Info = (MediaRoute2Info) it.next();
                        if (InfoMediaManager.DEBUG) {
                            Log.d("InfoMediaManager", "buildAvailableRoutes() route : " + ((Object) mediaRoute2Info.getName()) + ", volume : " + mediaRoute2Info.getVolume() + ", type : " + mediaRoute2Info.getType());
                        }
                        infoMediaManager2.addMediaDevice(mediaRoute2Info);
                    }
                }
            }
            MediaDevice mediaDevice = InfoMediaManager.this.mCurrentConnectedDevice;
            if (mediaDevice != null) {
                str = mediaDevice.getId();
            }
            InfoMediaManager infoMediaManager3 = InfoMediaManager.this;
            infoMediaManager3.getClass();
            Iterator it2 = new CopyOnWriteArrayList(infoMediaManager3.mCallbacks).iterator();
            while (it2.hasNext()) {
                LocalMediaManager localMediaManager = LocalMediaManager.this;
                MediaDevice mediaDeviceById = localMediaManager.getMediaDeviceById(str);
                if (mediaDeviceById == null) {
                    mediaDeviceById = localMediaManager.updateCurrentConnectedDevice();
                }
                localMediaManager.mCurrentConnectedDevice = mediaDeviceById;
                if (mediaDeviceById != null) {
                    mediaDeviceById.mState = 0;
                    localMediaManager.dispatchSelectedDeviceStateChanged(mediaDeviceById);
                }
            }
        }

        public final void onTransferFailed(RoutingSessionInfo routingSessionInfo, MediaRoute2Info mediaRoute2Info) {
        }
    }
}

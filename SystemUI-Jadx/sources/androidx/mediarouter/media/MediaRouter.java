package androidx.mediarouter.media;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.media.MediaRoute2Info;
import android.media.MediaRouter2;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.collection.ArrayMap;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.constraintlayout.motion.widget.MotionLayout$$ExternalSyntheticOutline0;
import androidx.core.util.Pair;
import androidx.mediarouter.media.MediaRoute2Provider;
import androidx.mediarouter.media.MediaRouteProvider;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import androidx.mediarouter.media.RegisteredMediaRouteProviderWatcher;
import androidx.mediarouter.media.RemoteControlClientCompat;
import androidx.mediarouter.media.SystemMediaRouteProvider;
import com.google.common.util.concurrent.ListenableFuture;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaRouter {
    public static final boolean DEBUG = Log.isLoggable("MediaRouter", 3);
    public static GlobalMediaRouter sGlobal;
    public final ArrayList mCallbackRecords = new ArrayList();
    public final Context mContext;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class CallbackRecord {
        public final Callback mCallback;
        public int mFlags;
        public final MediaRouter mRouter;
        public MediaRouteSelector mSelector = MediaRouteSelector.EMPTY;
        public long mTimestamp;

        public CallbackRecord(MediaRouter mediaRouter, Callback callback) {
            this.mRouter = mediaRouter;
            this.mCallback = callback;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class GlobalMediaRouter implements SystemMediaRouteProvider.SyncCallback, RegisteredMediaRouteProviderWatcher.Callback {
        public MediaRouterActiveScanThrottlingHelper mActiveScanThrottlingHelper;
        public final Context mApplicationContext;
        public RouteInfo mBluetoothRoute;
        public int mCallbackCount;
        public RouteInfo mDefaultRoute;
        public MediaRouteDiscoveryRequest mDiscoveryRequest;
        public MediaRouteDiscoveryRequest mDiscoveryRequestForMr2Provider;
        public final AnonymousClass3 mDynamicRoutesListener;
        public boolean mIsInitialized;
        public final boolean mLowRam;
        public MediaRoute2Provider mMr2Provider;
        public RouteInfo mRequestedRoute;
        public MediaRouteProvider.DynamicGroupRouteController mRequestedRouteController;
        public RouteInfo mSelectedRoute;
        public MediaRouteProvider.RouteController mSelectedRouteController;
        public SystemMediaRouteProvider.Api24Impl mSystemProvider;
        public PrepareTransferNotifier mTransferNotifier;
        public boolean mTransferReceiverDeclared;
        public final ArrayList mRouters = new ArrayList();
        public final ArrayList mRoutes = new ArrayList();
        public final Map mUniqueIdMap = new HashMap();
        public final ArrayList mProviders = new ArrayList();
        public final ArrayList mRemoteControlClients = new ArrayList();
        public final RemoteControlClientCompat.PlaybackInfo mPlaybackInfo = new RemoteControlClientCompat.PlaybackInfo();
        public final ProviderCallback mProviderCallback = new ProviderCallback();
        public final CallbackHandler mCallbackHandler = new CallbackHandler();
        public final Map mRouteControllerMap = new HashMap();

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* renamed from: androidx.mediarouter.media.MediaRouter$GlobalMediaRouter$3, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass3 implements MediaRouteProvider.DynamicGroupRouteController.OnDynamicRoutesChangedListener {
            public AnonymousClass3() {
            }

            public final void onRoutesChanged(MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteController, MediaRouteDescriptor mediaRouteDescriptor, Collection collection) {
                GlobalMediaRouter globalMediaRouter = GlobalMediaRouter.this;
                if (dynamicGroupRouteController == globalMediaRouter.mRequestedRouteController && mediaRouteDescriptor != null) {
                    ProviderInfo providerInfo = globalMediaRouter.mRequestedRoute.mProvider;
                    String id = mediaRouteDescriptor.getId();
                    RouteInfo routeInfo = new RouteInfo(providerInfo, id, globalMediaRouter.assignRouteUniqueId(providerInfo, id));
                    routeInfo.maybeUpdateDescriptor(mediaRouteDescriptor);
                    if (globalMediaRouter.mSelectedRoute == routeInfo) {
                        return;
                    }
                    globalMediaRouter.notifyTransfer(globalMediaRouter, routeInfo, globalMediaRouter.mRequestedRouteController, 3, globalMediaRouter.mRequestedRoute, collection);
                    globalMediaRouter.mRequestedRoute = null;
                    globalMediaRouter.mRequestedRouteController = null;
                    return;
                }
                if (dynamicGroupRouteController == globalMediaRouter.mSelectedRouteController) {
                    if (mediaRouteDescriptor != null) {
                        globalMediaRouter.updateRouteDescriptorAndNotify(globalMediaRouter.mSelectedRoute, mediaRouteDescriptor);
                    }
                    globalMediaRouter.mSelectedRoute.updateDynamicDescriptors(collection);
                }
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class CallbackHandler extends Handler {
            public final ArrayList mTempCallbackRecords = new ArrayList();
            public final List mDynamicGroupRoutes = new ArrayList();

            public CallbackHandler() {
            }

            public static void invokeCallback(CallbackRecord callbackRecord, int i, Object obj) {
                RouteInfo routeInfo;
                boolean z;
                MediaRouter mediaRouter = callbackRecord.mRouter;
                int i2 = 65280 & i;
                Callback callback = callbackRecord.mCallback;
                if (i2 != 256) {
                    if (i2 != 512) {
                        if (i2 == 768 && i == 769) {
                            callback.onRouterParamsChanged((MediaRouterParams) obj);
                            return;
                        }
                        return;
                    }
                    switch (i) {
                        case 513:
                            callback.onProviderAdded(mediaRouter);
                            return;
                        case 514:
                            callback.onProviderRemoved(mediaRouter);
                            return;
                        case 515:
                            callback.onProviderChanged(mediaRouter);
                            return;
                        default:
                            return;
                    }
                }
                if (i != 264 && i != 262) {
                    routeInfo = (RouteInfo) obj;
                } else {
                    routeInfo = (RouteInfo) ((Pair) obj).second;
                }
                if (i == 264 || i == 262) {
                }
                if (routeInfo != null) {
                    if ((callbackRecord.mFlags & 2) == 0 && !routeInfo.matchesSelector(callbackRecord.mSelector)) {
                        MediaRouter.getGlobalRouter();
                        z = false;
                    } else {
                        z = true;
                    }
                    if (z) {
                        switch (i) {
                            case 257:
                                callback.onRouteAdded(mediaRouter);
                                return;
                            case 258:
                                callback.onRouteRemoved(mediaRouter);
                                return;
                            case 259:
                                callback.onRouteChanged(mediaRouter, routeInfo);
                                return;
                            case 260:
                                callback.onRouteVolumeChanged(routeInfo);
                                return;
                            case 261:
                                callback.getClass();
                                return;
                            case 262:
                                callback.onRouteSelected(routeInfo);
                                return;
                            case 263:
                                callback.onRouteUnselected();
                                return;
                            case 264:
                                callback.onRouteSelected(routeInfo);
                                return;
                            default:
                                return;
                        }
                    }
                }
            }

            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                int findUserRouteRecord;
                int i = message.what;
                Object obj = message.obj;
                if (i == 259 && GlobalMediaRouter.this.getSelectedRoute().mUniqueId.equals(((RouteInfo) obj).mUniqueId)) {
                    GlobalMediaRouter.this.updateSelectedRouteIfNeeded(true);
                }
                if (i != 262) {
                    if (i != 264) {
                        switch (i) {
                            case 257:
                                GlobalMediaRouter.this.mSystemProvider.onSyncRouteAdded((RouteInfo) obj);
                                break;
                            case 258:
                                GlobalMediaRouter.this.mSystemProvider.onSyncRouteRemoved((RouteInfo) obj);
                                break;
                            case 259:
                                SystemMediaRouteProvider.Api24Impl api24Impl = GlobalMediaRouter.this.mSystemProvider;
                                RouteInfo routeInfo = (RouteInfo) obj;
                                api24Impl.getClass();
                                if (routeInfo.getProviderInstance() != api24Impl && (findUserRouteRecord = api24Impl.findUserRouteRecord(routeInfo)) >= 0) {
                                    api24Impl.updateUserRouteProperties((SystemMediaRouteProvider.JellybeanImpl.UserRouteRecord) api24Impl.mUserRouteRecords.get(findUserRouteRecord));
                                    break;
                                }
                                break;
                        }
                    } else {
                        RouteInfo routeInfo2 = (RouteInfo) ((Pair) obj).second;
                        ((ArrayList) this.mDynamicGroupRoutes).add(routeInfo2);
                        GlobalMediaRouter.this.mSystemProvider.onSyncRouteAdded(routeInfo2);
                        GlobalMediaRouter.this.mSystemProvider.onSyncRouteSelected(routeInfo2);
                    }
                } else {
                    RouteInfo routeInfo3 = (RouteInfo) ((Pair) obj).second;
                    GlobalMediaRouter.this.mSystemProvider.onSyncRouteSelected(routeInfo3);
                    if (GlobalMediaRouter.this.mDefaultRoute != null && routeInfo3.isDefaultOrBluetooth()) {
                        Iterator it = ((ArrayList) this.mDynamicGroupRoutes).iterator();
                        while (it.hasNext()) {
                            GlobalMediaRouter.this.mSystemProvider.onSyncRouteRemoved((RouteInfo) it.next());
                        }
                        ((ArrayList) this.mDynamicGroupRoutes).clear();
                    }
                }
                try {
                    int size = GlobalMediaRouter.this.mRouters.size();
                    while (true) {
                        size--;
                        if (size >= 0) {
                            MediaRouter mediaRouter = (MediaRouter) ((WeakReference) GlobalMediaRouter.this.mRouters.get(size)).get();
                            if (mediaRouter == null) {
                                GlobalMediaRouter.this.mRouters.remove(size);
                            } else {
                                this.mTempCallbackRecords.addAll(mediaRouter.mCallbackRecords);
                            }
                        } else {
                            int size2 = this.mTempCallbackRecords.size();
                            for (int i2 = 0; i2 < size2; i2++) {
                                invokeCallback((CallbackRecord) this.mTempCallbackRecords.get(i2), i, obj);
                            }
                            return;
                        }
                    }
                } finally {
                    this.mTempCallbackRecords.clear();
                }
            }

            public final void post(int i, Object obj) {
                obtainMessage(i, obj).sendToTarget();
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Mr2ProviderCallback extends MediaRoute2Provider.Callback {
            public Mr2ProviderCallback() {
            }

            @Override // androidx.mediarouter.media.MediaRoute2Provider.Callback
            public final void onReleaseController(MediaRouteProvider.RouteController routeController) {
                GlobalMediaRouter globalMediaRouter = GlobalMediaRouter.this;
                if (routeController == globalMediaRouter.mSelectedRouteController) {
                    RouteInfo chooseFallbackRoute = globalMediaRouter.chooseFallbackRoute();
                    if (globalMediaRouter.getSelectedRoute() != chooseFallbackRoute) {
                        globalMediaRouter.selectRouteInternal(chooseFallbackRoute, 2);
                        return;
                    }
                    return;
                }
                if (MediaRouter.DEBUG) {
                    Log.d("MediaRouter", "A RouteController unrelated to the selected route is released. controller=" + routeController);
                }
            }

            @Override // androidx.mediarouter.media.MediaRoute2Provider.Callback
            public final void onSelectFallbackRoute() {
                GlobalMediaRouter globalMediaRouter = GlobalMediaRouter.this;
                RouteInfo chooseFallbackRoute = globalMediaRouter.chooseFallbackRoute();
                if (globalMediaRouter.getSelectedRoute() != chooseFallbackRoute) {
                    globalMediaRouter.selectRouteInternal(chooseFallbackRoute, 3);
                }
            }

            @Override // androidx.mediarouter.media.MediaRoute2Provider.Callback
            public final void onSelectRoute(String str) {
                RouteInfo routeInfo;
                GlobalMediaRouter globalMediaRouter = GlobalMediaRouter.this;
                Iterator it = globalMediaRouter.mRoutes.iterator();
                while (true) {
                    if (it.hasNext()) {
                        routeInfo = (RouteInfo) it.next();
                        if (routeInfo.getProviderInstance() == globalMediaRouter.mMr2Provider && TextUtils.equals(str, routeInfo.mDescriptorId)) {
                            break;
                        }
                    } else {
                        routeInfo = null;
                        break;
                    }
                }
                if (routeInfo == null) {
                    MotionLayout$$ExternalSyntheticOutline0.m("onSelectRoute: The target RouteInfo is not found for descriptorId=", str, "MediaRouter");
                } else {
                    globalMediaRouter.selectRouteInternal(routeInfo, 3);
                }
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class ProviderCallback extends MediaRouteProvider.Callback {
            public ProviderCallback() {
            }

            @Override // androidx.mediarouter.media.MediaRouteProvider.Callback
            public final void onDescriptorChanged(MediaRouteProvider mediaRouteProvider, MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
                GlobalMediaRouter globalMediaRouter = GlobalMediaRouter.this;
                ProviderInfo findProviderInfo = globalMediaRouter.findProviderInfo(mediaRouteProvider);
                if (findProviderInfo != null) {
                    globalMediaRouter.updateProviderContents(findProviderInfo, mediaRouteProviderDescriptor);
                }
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class RemoteControlClientRecord {
            public final RemoteControlClientCompat.JellybeanImpl mRccCompat;

            public RemoteControlClientRecord(Object obj) {
                RemoteControlClientCompat.JellybeanImpl jellybeanImpl = new RemoteControlClientCompat.JellybeanImpl(GlobalMediaRouter.this.mApplicationContext, obj);
                this.mRccCompat = jellybeanImpl;
                jellybeanImpl.mVolumeCallback = this;
                jellybeanImpl.setPlaybackInfo(GlobalMediaRouter.this.mPlaybackInfo);
            }
        }

        public GlobalMediaRouter(Context context) {
            new Object(this) { // from class: androidx.mediarouter.media.MediaRouter.GlobalMediaRouter.1
            };
            this.mDynamicRoutesListener = new AnonymousClass3();
            this.mApplicationContext = context;
            this.mLowRam = ((ActivityManager) context.getSystemService("activity")).isLowRamDevice();
        }

        public final void addProvider(MediaRouteProvider mediaRouteProvider) {
            if (findProviderInfo(mediaRouteProvider) == null) {
                ProviderInfo providerInfo = new ProviderInfo(mediaRouteProvider);
                this.mProviders.add(providerInfo);
                if (MediaRouter.DEBUG) {
                    Log.d("MediaRouter", "Provider added: " + providerInfo);
                }
                this.mCallbackHandler.post(513, providerInfo);
                updateProviderContents(providerInfo, mediaRouteProvider.mDescriptor);
                MediaRouter.checkCallingThread();
                mediaRouteProvider.mCallback = this.mProviderCallback;
                mediaRouteProvider.setDiscoveryRequest(this.mDiscoveryRequest);
            }
        }

        public final String assignRouteUniqueId(ProviderInfo providerInfo, String str) {
            String flattenToShortString = providerInfo.mMetadata.mComponentName.flattenToShortString();
            String m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(flattenToShortString, ":", str);
            int findRouteByUniqueId = findRouteByUniqueId(m);
            Map map = this.mUniqueIdMap;
            if (findRouteByUniqueId < 0) {
                ((HashMap) map).put(new Pair(flattenToShortString, str), m);
                return m;
            }
            Log.w("MediaRouter", MotionLayout$$ExternalSyntheticOutline0.m("Either ", str, " isn't unique in ", flattenToShortString, " or we're trying to assign a unique ID for an already added route"));
            int i = 2;
            while (true) {
                String format = String.format(Locale.US, "%s_%d", m, Integer.valueOf(i));
                if (findRouteByUniqueId(format) < 0) {
                    ((HashMap) map).put(new Pair(flattenToShortString, str), format);
                    return format;
                }
                i++;
            }
        }

        public final RouteInfo chooseFallbackRoute() {
            boolean z;
            Iterator it = this.mRoutes.iterator();
            while (it.hasNext()) {
                RouteInfo routeInfo = (RouteInfo) it.next();
                if (routeInfo != this.mDefaultRoute) {
                    if (routeInfo.getProviderInstance() == this.mSystemProvider && routeInfo.supportsControlCategory("android.media.intent.category.LIVE_AUDIO") && !routeInfo.supportsControlCategory("android.media.intent.category.LIVE_VIDEO")) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z && routeInfo.isSelectable()) {
                        return routeInfo;
                    }
                }
            }
            return this.mDefaultRoute;
        }

        public final void ensureInitialized() {
            if (this.mIsInitialized) {
                return;
            }
            this.mIsInitialized = true;
            int i = MediaTransferReceiver.$r8$clinit;
            Context context = this.mApplicationContext;
            Intent intent = new Intent(context, (Class<?>) MediaTransferReceiver.class);
            intent.setPackage(context.getPackageName());
            boolean z = false;
            if (context.getPackageManager().queryBroadcastReceivers(intent, 0).size() > 0) {
                z = true;
            }
            this.mTransferReceiverDeclared = z;
            if (z) {
                this.mMr2Provider = new MediaRoute2Provider(context, new Mr2ProviderCallback());
            } else {
                this.mMr2Provider = null;
            }
            this.mSystemProvider = new SystemMediaRouteProvider.Api24Impl(context, this);
            this.mActiveScanThrottlingHelper = new MediaRouterActiveScanThrottlingHelper(new Runnable() { // from class: androidx.mediarouter.media.MediaRouter.GlobalMediaRouter.2
                @Override // java.lang.Runnable
                public final void run() {
                    GlobalMediaRouter.this.updateDiscoveryRequest();
                }
            });
            addProvider(this.mSystemProvider);
            MediaRoute2Provider mediaRoute2Provider = this.mMr2Provider;
            if (mediaRoute2Provider != null) {
                addProvider(mediaRoute2Provider);
            }
            RegisteredMediaRouteProviderWatcher registeredMediaRouteProviderWatcher = new RegisteredMediaRouteProviderWatcher(context, this);
            if (!registeredMediaRouteProviderWatcher.mRunning) {
                registeredMediaRouteProviderWatcher.mRunning = true;
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
                intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
                intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
                intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
                intentFilter.addAction("android.intent.action.PACKAGE_RESTARTED");
                intentFilter.addDataScheme("package");
                Handler handler = registeredMediaRouteProviderWatcher.mHandler;
                registeredMediaRouteProviderWatcher.mContext.registerReceiver(registeredMediaRouteProviderWatcher.mScanPackagesReceiver, intentFilter, null, handler);
                handler.post(registeredMediaRouteProviderWatcher.mScanPackagesRunnable);
            }
        }

        public final ProviderInfo findProviderInfo(MediaRouteProvider mediaRouteProvider) {
            ArrayList arrayList = this.mProviders;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((ProviderInfo) arrayList.get(i)).mProviderInstance == mediaRouteProvider) {
                    return (ProviderInfo) arrayList.get(i);
                }
            }
            return null;
        }

        public final int findRouteByUniqueId(String str) {
            ArrayList arrayList = this.mRoutes;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((RouteInfo) arrayList.get(i)).mUniqueId.equals(str)) {
                    return i;
                }
            }
            return -1;
        }

        public final RouteInfo getSelectedRoute() {
            RouteInfo routeInfo = this.mSelectedRoute;
            if (routeInfo != null) {
                return routeInfo;
            }
            throw new IllegalStateException("There is no currently selected route.  The media router has not yet been fully initialized.");
        }

        public final void maybeUpdateMemberRouteControllers() {
            if (!this.mSelectedRoute.isGroup()) {
                return;
            }
            List<RouteInfo> memberRoutes = this.mSelectedRoute.getMemberRoutes();
            HashSet hashSet = new HashSet();
            Iterator it = memberRoutes.iterator();
            while (it.hasNext()) {
                hashSet.add(((RouteInfo) it.next()).mUniqueId);
            }
            Map map = this.mRouteControllerMap;
            Iterator it2 = ((HashMap) map).entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                if (!hashSet.contains(entry.getKey())) {
                    MediaRouteProvider.RouteController routeController = (MediaRouteProvider.RouteController) entry.getValue();
                    routeController.onUnselect(0);
                    routeController.onRelease();
                    it2.remove();
                }
            }
            for (RouteInfo routeInfo : memberRoutes) {
                if (!((HashMap) map).containsKey(routeInfo.mUniqueId)) {
                    MediaRouteProvider.RouteController onCreateRouteController = routeInfo.getProviderInstance().onCreateRouteController(routeInfo.mDescriptorId, this.mSelectedRoute.mDescriptorId);
                    onCreateRouteController.onSelect();
                    ((HashMap) map).put(routeInfo.mUniqueId, onCreateRouteController);
                }
            }
        }

        public final void notifyTransfer(GlobalMediaRouter globalMediaRouter, RouteInfo routeInfo, MediaRouteProvider.RouteController routeController, int i, RouteInfo routeInfo2, Collection collection) {
            PrepareTransferNotifier prepareTransferNotifier = this.mTransferNotifier;
            if (prepareTransferNotifier != null) {
                if (!prepareTransferNotifier.mFinished && !prepareTransferNotifier.mCanceled) {
                    prepareTransferNotifier.mCanceled = true;
                    MediaRouteProvider.RouteController routeController2 = prepareTransferNotifier.mToRouteController;
                    if (routeController2 != null) {
                        routeController2.onUnselect(0);
                        routeController2.onRelease();
                    }
                }
                this.mTransferNotifier = null;
            }
            PrepareTransferNotifier prepareTransferNotifier2 = new PrepareTransferNotifier(globalMediaRouter, routeInfo, routeController, i, routeInfo2, collection);
            this.mTransferNotifier = prepareTransferNotifier2;
            prepareTransferNotifier2.finishTransfer();
        }

        public final void selectRoute(RouteInfo routeInfo, int i) {
            if (!this.mRoutes.contains(routeInfo)) {
                Log.w("MediaRouter", "Ignoring attempt to select removed route: " + routeInfo);
                return;
            }
            if (!routeInfo.mEnabled) {
                Log.w("MediaRouter", "Ignoring attempt to select disabled route: " + routeInfo);
                return;
            }
            MediaRouteProvider providerInstance = routeInfo.getProviderInstance();
            MediaRoute2Provider mediaRoute2Provider = this.mMr2Provider;
            if (providerInstance == mediaRoute2Provider && this.mSelectedRoute != routeInfo) {
                String str = routeInfo.mDescriptorId;
                MediaRoute2Info routeById = mediaRoute2Provider.getRouteById(str);
                if (routeById == null) {
                    MotionLayout$$ExternalSyntheticOutline0.m("transferTo: Specified route not found. routeId=", str, "MR2Provider");
                    return;
                } else {
                    mediaRoute2Provider.mMediaRouter2.transferTo(routeById);
                    return;
                }
            }
            selectRouteInternal(routeInfo, i);
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
        
            if (r0 != false) goto L15;
         */
        /* JADX WARN: Removed duplicated region for block: B:16:0x00b7 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:17:0x00b8  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void selectRouteInternal(androidx.mediarouter.media.MediaRouter.RouteInfo r13, int r14) {
            /*
                Method dump skipped, instructions count: 408
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.media.MediaRouter.GlobalMediaRouter.selectRouteInternal(androidx.mediarouter.media.MediaRouter$RouteInfo, int):void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:59:0x010c, code lost:
        
            if (r22.mDiscoveryRequestForMr2Provider.isActiveScan() == r2) goto L68;
         */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0098  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00a6  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00a7 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void updateDiscoveryRequest() {
            /*
                Method dump skipped, instructions count: 436
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.media.MediaRouter.GlobalMediaRouter.updateDiscoveryRequest():void");
        }

        public final void updatePlaybackInfoFromSelectedRoute() {
            MediaRouter2.RoutingController routingController;
            RouteInfo routeInfo = this.mSelectedRoute;
            if (routeInfo != null) {
                int i = routeInfo.mVolume;
                RemoteControlClientCompat.PlaybackInfo playbackInfo = this.mPlaybackInfo;
                playbackInfo.volume = i;
                playbackInfo.volumeMax = routeInfo.mVolumeMax;
                playbackInfo.volumeHandling = routeInfo.getVolumeHandling();
                RouteInfo routeInfo2 = this.mSelectedRoute;
                playbackInfo.playbackStream = routeInfo2.mPlaybackStream;
                playbackInfo.playbackType = routeInfo2.mPlaybackType;
                if (this.mTransferReceiverDeclared && routeInfo2.getProviderInstance() == this.mMr2Provider) {
                    MediaRouteProvider.RouteController routeController = this.mSelectedRouteController;
                    if ((routeController instanceof MediaRoute2Provider.GroupRouteController) && (routingController = ((MediaRoute2Provider.GroupRouteController) routeController).mRoutingController) != null) {
                        routingController.getId();
                    }
                }
                ArrayList arrayList = this.mRemoteControlClients;
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    RemoteControlClientRecord remoteControlClientRecord = (RemoteControlClientRecord) arrayList.get(i2);
                    remoteControlClientRecord.mRccCompat.setPlaybackInfo(GlobalMediaRouter.this.mPlaybackInfo);
                }
            }
        }

        public final void updateProviderContents(ProviderInfo providerInfo, MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
            boolean z;
            boolean z2;
            int i;
            Iterator it;
            boolean z3;
            if (providerInfo.mDescriptor != mediaRouteProviderDescriptor) {
                providerInfo.mDescriptor = mediaRouteProviderDescriptor;
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                return;
            }
            ArrayList arrayList = this.mRoutes;
            List list = providerInfo.mRoutes;
            CallbackHandler callbackHandler = this.mCallbackHandler;
            if (mediaRouteProviderDescriptor != null && (mediaRouteProviderDescriptor.isValid() || mediaRouteProviderDescriptor == this.mSystemProvider.mDescriptor)) {
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                Iterator it2 = mediaRouteProviderDescriptor.mRoutes.iterator();
                boolean z4 = false;
                i = 0;
                while (it2.hasNext()) {
                    MediaRouteDescriptor mediaRouteDescriptor = (MediaRouteDescriptor) it2.next();
                    if (mediaRouteDescriptor != null && mediaRouteDescriptor.isValid()) {
                        String id = mediaRouteDescriptor.getId();
                        ArrayList arrayList4 = (ArrayList) list;
                        int size = arrayList4.size();
                        it = it2;
                        int i2 = 0;
                        while (true) {
                            if (i2 < size) {
                                z3 = z4;
                                if (((RouteInfo) arrayList4.get(i2)).mDescriptorId.equals(id)) {
                                    break;
                                }
                                i2++;
                                z4 = z3;
                            } else {
                                z3 = z4;
                                i2 = -1;
                                break;
                            }
                        }
                        if (i2 < 0) {
                            RouteInfo routeInfo = new RouteInfo(providerInfo, id, assignRouteUniqueId(providerInfo, id));
                            int i3 = i + 1;
                            arrayList4.add(i, routeInfo);
                            arrayList.add(routeInfo);
                            if (mediaRouteDescriptor.getGroupMemberIds().size() > 0) {
                                arrayList2.add(new Pair(routeInfo, mediaRouteDescriptor));
                            } else {
                                routeInfo.maybeUpdateDescriptor(mediaRouteDescriptor);
                                if (MediaRouter.DEBUG) {
                                    Log.d("MediaRouter", "Route added: " + routeInfo);
                                }
                                callbackHandler.post(257, routeInfo);
                            }
                            i = i3;
                        } else if (i2 < i) {
                            Log.w("MediaRouter", "Ignoring route descriptor with duplicate id: " + mediaRouteDescriptor);
                        } else {
                            RouteInfo routeInfo2 = (RouteInfo) arrayList4.get(i2);
                            int i4 = i + 1;
                            Collections.swap(list, i2, i);
                            if (mediaRouteDescriptor.getGroupMemberIds().size() > 0) {
                                arrayList3.add(new Pair(routeInfo2, mediaRouteDescriptor));
                            } else if (updateRouteDescriptorAndNotify(routeInfo2, mediaRouteDescriptor) != 0 && routeInfo2 == this.mSelectedRoute) {
                                i = i4;
                                z4 = true;
                                it2 = it;
                            }
                            i = i4;
                        }
                    } else {
                        it = it2;
                        z3 = z4;
                        Log.w("MediaRouter", "Ignoring invalid system route descriptor: " + mediaRouteDescriptor);
                    }
                    z4 = z3;
                    it2 = it;
                }
                boolean z5 = z4;
                Iterator it3 = arrayList2.iterator();
                while (it3.hasNext()) {
                    Pair pair = (Pair) it3.next();
                    RouteInfo routeInfo3 = (RouteInfo) pair.first;
                    routeInfo3.maybeUpdateDescriptor((MediaRouteDescriptor) pair.second);
                    if (MediaRouter.DEBUG) {
                        Log.d("MediaRouter", "Route added: " + routeInfo3);
                    }
                    callbackHandler.post(257, routeInfo3);
                }
                Iterator it4 = arrayList3.iterator();
                z2 = z5;
                while (it4.hasNext()) {
                    Pair pair2 = (Pair) it4.next();
                    RouteInfo routeInfo4 = (RouteInfo) pair2.first;
                    if (updateRouteDescriptorAndNotify(routeInfo4, (MediaRouteDescriptor) pair2.second) != 0 && routeInfo4 == this.mSelectedRoute) {
                        z2 = true;
                    }
                }
            } else {
                Log.w("MediaRouter", "Ignoring invalid provider descriptor: " + mediaRouteProviderDescriptor);
                z2 = false;
                i = 0;
            }
            ArrayList arrayList5 = (ArrayList) list;
            for (int size2 = arrayList5.size() - 1; size2 >= i; size2--) {
                RouteInfo routeInfo5 = (RouteInfo) arrayList5.get(size2);
                routeInfo5.maybeUpdateDescriptor(null);
                arrayList.remove(routeInfo5);
            }
            updateSelectedRouteIfNeeded(z2);
            for (int size3 = arrayList5.size() - 1; size3 >= i; size3--) {
                RouteInfo routeInfo6 = (RouteInfo) arrayList5.remove(size3);
                if (MediaRouter.DEBUG) {
                    Log.d("MediaRouter", "Route removed: " + routeInfo6);
                }
                callbackHandler.post(258, routeInfo6);
            }
            if (MediaRouter.DEBUG) {
                Log.d("MediaRouter", "Provider changed: " + providerInfo);
            }
            callbackHandler.post(515, providerInfo);
        }

        public final int updateRouteDescriptorAndNotify(RouteInfo routeInfo, MediaRouteDescriptor mediaRouteDescriptor) {
            int maybeUpdateDescriptor = routeInfo.maybeUpdateDescriptor(mediaRouteDescriptor);
            if (maybeUpdateDescriptor != 0) {
                int i = maybeUpdateDescriptor & 1;
                CallbackHandler callbackHandler = this.mCallbackHandler;
                if (i != 0) {
                    if (MediaRouter.DEBUG) {
                        Log.d("MediaRouter", "Route changed: " + routeInfo);
                    }
                    callbackHandler.post(259, routeInfo);
                }
                if ((maybeUpdateDescriptor & 2) != 0) {
                    if (MediaRouter.DEBUG) {
                        Log.d("MediaRouter", "Route volume changed: " + routeInfo);
                    }
                    callbackHandler.post(260, routeInfo);
                }
                if ((maybeUpdateDescriptor & 4) != 0) {
                    if (MediaRouter.DEBUG) {
                        Log.d("MediaRouter", "Route presentation display changed: " + routeInfo);
                    }
                    callbackHandler.post(261, routeInfo);
                }
            }
            return maybeUpdateDescriptor;
        }

        public final void updateSelectedRouteIfNeeded(boolean z) {
            boolean z2;
            boolean z3;
            RouteInfo routeInfo = this.mDefaultRoute;
            if (routeInfo != null && !routeInfo.isSelectable()) {
                Log.i("MediaRouter", "Clearing the default route because it is no longer selectable: " + this.mDefaultRoute);
                this.mDefaultRoute = null;
            }
            RouteInfo routeInfo2 = this.mDefaultRoute;
            ArrayList arrayList = this.mRoutes;
            if (routeInfo2 == null && !arrayList.isEmpty()) {
                Iterator it = arrayList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    RouteInfo routeInfo3 = (RouteInfo) it.next();
                    if (routeInfo3.getProviderInstance() == this.mSystemProvider && routeInfo3.mDescriptorId.equals("DEFAULT_ROUTE")) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (z3 && routeInfo3.isSelectable()) {
                        this.mDefaultRoute = routeInfo3;
                        Log.i("MediaRouter", "Found default route: " + this.mDefaultRoute);
                        break;
                    }
                }
            }
            RouteInfo routeInfo4 = this.mBluetoothRoute;
            if (routeInfo4 != null && !routeInfo4.isSelectable()) {
                Log.i("MediaRouter", "Clearing the bluetooth route because it is no longer selectable: " + this.mBluetoothRoute);
                this.mBluetoothRoute = null;
            }
            if (this.mBluetoothRoute == null && !arrayList.isEmpty()) {
                Iterator it2 = arrayList.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    RouteInfo routeInfo5 = (RouteInfo) it2.next();
                    if (routeInfo5.getProviderInstance() == this.mSystemProvider && routeInfo5.supportsControlCategory("android.media.intent.category.LIVE_AUDIO") && !routeInfo5.supportsControlCategory("android.media.intent.category.LIVE_VIDEO")) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2 && routeInfo5.isSelectable()) {
                        this.mBluetoothRoute = routeInfo5;
                        Log.i("MediaRouter", "Found bluetooth route: " + this.mBluetoothRoute);
                        break;
                    }
                }
            }
            RouteInfo routeInfo6 = this.mSelectedRoute;
            if (routeInfo6 != null && routeInfo6.mEnabled) {
                if (z) {
                    maybeUpdateMemberRouteControllers();
                    updatePlaybackInfoFromSelectedRoute();
                    return;
                }
                return;
            }
            Log.i("MediaRouter", "Unselecting the current route because it is no longer selectable: " + this.mSelectedRoute);
            selectRouteInternal(chooseFallbackRoute(), 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class PrepareTransferNotifier {
        public final RouteInfo mFromRoute;
        public final List mMemberRoutes;
        public final int mReason;
        public final RouteInfo mRequestedRoute;
        public final WeakReference mRouter;
        public final RouteInfo mToRoute;
        public final MediaRouteProvider.RouteController mToRouteController;
        public ListenableFuture mFuture = null;
        public boolean mFinished = false;
        public boolean mCanceled = false;

        public PrepareTransferNotifier(GlobalMediaRouter globalMediaRouter, RouteInfo routeInfo, MediaRouteProvider.RouteController routeController, int i, RouteInfo routeInfo2, Collection<MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor> collection) {
            this.mRouter = new WeakReference(globalMediaRouter);
            this.mToRoute = routeInfo;
            this.mToRouteController = routeController;
            this.mReason = i;
            this.mFromRoute = globalMediaRouter.mSelectedRoute;
            this.mRequestedRoute = routeInfo2;
            this.mMemberRoutes = collection != null ? new ArrayList(collection) : null;
            final int i2 = 1;
            globalMediaRouter.mCallbackHandler.postDelayed(new Runnable(this) { // from class: androidx.mediarouter.media.MediaRouter$PrepareTransferNotifier$$ExternalSyntheticLambda0
                public final /* synthetic */ MediaRouter.PrepareTransferNotifier f$0;

                {
                    this.f$0 = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i2) {
                        case 0:
                        default:
                            this.f$0.finishTransfer();
                            return;
                    }
                }
            }, 15000L);
        }

        public final void finishTransfer() {
            ListenableFuture listenableFuture;
            MediaRouter.checkCallingThread();
            if (!this.mFinished && !this.mCanceled) {
                WeakReference weakReference = this.mRouter;
                GlobalMediaRouter globalMediaRouter = (GlobalMediaRouter) weakReference.get();
                MediaRouteProvider.RouteController routeController = this.mToRouteController;
                if (globalMediaRouter != null && globalMediaRouter.mTransferNotifier == this && ((listenableFuture = this.mFuture) == null || !listenableFuture.isCancelled())) {
                    this.mFinished = true;
                    globalMediaRouter.mTransferNotifier = null;
                    GlobalMediaRouter globalMediaRouter2 = (GlobalMediaRouter) weakReference.get();
                    int i = this.mReason;
                    RouteInfo routeInfo = this.mFromRoute;
                    if (globalMediaRouter2 != null && globalMediaRouter2.mSelectedRoute == routeInfo) {
                        Message obtainMessage = globalMediaRouter2.mCallbackHandler.obtainMessage(263, routeInfo);
                        obtainMessage.arg1 = i;
                        obtainMessage.sendToTarget();
                        MediaRouteProvider.RouteController routeController2 = globalMediaRouter2.mSelectedRouteController;
                        if (routeController2 != null) {
                            routeController2.onUnselect(i);
                            globalMediaRouter2.mSelectedRouteController.onRelease();
                        }
                        HashMap hashMap = (HashMap) globalMediaRouter2.mRouteControllerMap;
                        if (!hashMap.isEmpty()) {
                            for (MediaRouteProvider.RouteController routeController3 : hashMap.values()) {
                                routeController3.onUnselect(i);
                                routeController3.onRelease();
                            }
                            hashMap.clear();
                        }
                        globalMediaRouter2.mSelectedRouteController = null;
                    }
                    GlobalMediaRouter globalMediaRouter3 = (GlobalMediaRouter) weakReference.get();
                    if (globalMediaRouter3 != null) {
                        RouteInfo routeInfo2 = this.mToRoute;
                        globalMediaRouter3.mSelectedRoute = routeInfo2;
                        globalMediaRouter3.mSelectedRouteController = routeController;
                        GlobalMediaRouter.CallbackHandler callbackHandler = globalMediaRouter3.mCallbackHandler;
                        RouteInfo routeInfo3 = this.mRequestedRoute;
                        if (routeInfo3 == null) {
                            Message obtainMessage2 = callbackHandler.obtainMessage(262, new Pair(routeInfo, routeInfo2));
                            obtainMessage2.arg1 = i;
                            obtainMessage2.sendToTarget();
                        } else {
                            Message obtainMessage3 = callbackHandler.obtainMessage(264, new Pair(routeInfo3, routeInfo2));
                            obtainMessage3.arg1 = i;
                            obtainMessage3.sendToTarget();
                        }
                        ((HashMap) globalMediaRouter3.mRouteControllerMap).clear();
                        globalMediaRouter3.maybeUpdateMemberRouteControllers();
                        globalMediaRouter3.updatePlaybackInfoFromSelectedRoute();
                        List list = this.mMemberRoutes;
                        if (list != null) {
                            globalMediaRouter3.mSelectedRoute.updateDynamicDescriptors(list);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (!this.mFinished && !this.mCanceled) {
                    this.mCanceled = true;
                    if (routeController != null) {
                        routeController.onUnselect(0);
                        routeController.onRelease();
                    }
                }
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ProviderInfo {
        public MediaRouteProviderDescriptor mDescriptor;
        public final MediaRouteProvider.ProviderMetadata mMetadata;
        public final MediaRouteProvider mProviderInstance;
        public final List mRoutes = new ArrayList();

        public ProviderInfo(MediaRouteProvider mediaRouteProvider) {
            this.mProviderInstance = mediaRouteProvider;
            this.mMetadata = mediaRouteProvider.mMetadata;
        }

        public final RouteInfo findRouteByDescriptorId(String str) {
            List list = this.mRoutes;
            int size = ((ArrayList) list).size();
            for (int i = 0; i < size; i++) {
                if (((RouteInfo) ((ArrayList) list).get(i)).mDescriptorId.equals(str)) {
                    return (RouteInfo) ((ArrayList) list).get(i);
                }
            }
            return null;
        }

        public final String toString() {
            return "MediaRouter.RouteProviderInfo{ packageName=" + this.mMetadata.mComponentName.getPackageName() + " }";
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class RouteInfo {
        public boolean mCanDisconnect;
        public int mConnectionState;
        public String mDescription;
        public MediaRouteDescriptor mDescriptor;
        public final String mDescriptorId;
        public int mDeviceType;
        public ArrayMap mDynamicGroupDescriptors;
        public boolean mEnabled;
        public Bundle mExtras;
        public Uri mIconUri;
        public String mName;
        public int mPlaybackStream;
        public int mPlaybackType;
        public final ProviderInfo mProvider;
        public IntentSender mSettingsIntent;
        public final String mUniqueId;
        public int mVolume;
        public int mVolumeHandling;
        public int mVolumeMax;
        public final ArrayList mControlFilters = new ArrayList();
        public int mPresentationDisplayId = -1;
        public List mMemberRoutes = new ArrayList();

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class DynamicGroupState {
            public final MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor mDynamicDescriptor;

            public DynamicGroupState(MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor dynamicRouteDescriptor) {
                this.mDynamicDescriptor = dynamicRouteDescriptor;
            }
        }

        public RouteInfo(ProviderInfo providerInfo, String str, String str2) {
            this.mProvider = providerInfo;
            this.mDescriptorId = str;
            this.mUniqueId = str2;
        }

        public static MediaRouteProvider.DynamicGroupRouteController getDynamicGroupController() {
            MediaRouter.checkCallingThread();
            MediaRouteProvider.RouteController routeController = MediaRouter.getGlobalRouter().mSelectedRouteController;
            if (routeController instanceof MediaRouteProvider.DynamicGroupRouteController) {
                return (MediaRouteProvider.DynamicGroupRouteController) routeController;
            }
            return null;
        }

        public final DynamicGroupState getDynamicGroupState(RouteInfo routeInfo) {
            if (routeInfo != null) {
                ArrayMap arrayMap = this.mDynamicGroupDescriptors;
                if (arrayMap != null) {
                    String str = routeInfo.mUniqueId;
                    if (arrayMap.containsKey(str)) {
                        return new DynamicGroupState((MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor) this.mDynamicGroupDescriptors.get(str));
                    }
                    return null;
                }
                return null;
            }
            throw new NullPointerException("route must not be null");
        }

        public final List getMemberRoutes() {
            return Collections.unmodifiableList(this.mMemberRoutes);
        }

        public final MediaRouteProvider getProviderInstance() {
            ProviderInfo providerInfo = this.mProvider;
            providerInfo.getClass();
            MediaRouter.checkCallingThread();
            return providerInfo.mProviderInstance;
        }

        public final int getVolumeHandling() {
            boolean z;
            if (isGroup()) {
                if (MediaRouter.sGlobal == null) {
                    z = false;
                } else {
                    MediaRouter.getGlobalRouter().getClass();
                    z = true;
                }
                if (!z) {
                    return 0;
                }
            }
            return this.mVolumeHandling;
        }

        public final boolean isDefaultOrBluetooth() {
            boolean z;
            MediaRouter.checkCallingThread();
            RouteInfo routeInfo = MediaRouter.getGlobalRouter().mDefaultRoute;
            if (routeInfo != null) {
                if (routeInfo == this) {
                    z = true;
                } else {
                    z = false;
                }
                if (z || this.mDeviceType == 3) {
                    return true;
                }
                if (TextUtils.equals(getProviderInstance().mMetadata.mComponentName.getPackageName(), "android") && supportsControlCategory("android.media.intent.category.LIVE_AUDIO") && !supportsControlCategory("android.media.intent.category.LIVE_VIDEO")) {
                    return true;
                }
                return false;
            }
            throw new IllegalStateException("There is no default route.  The media router has not yet been fully initialized.");
        }

        public final boolean isGroup() {
            if (getMemberRoutes().size() >= 1) {
                return true;
            }
            return false;
        }

        public final boolean isSelectable() {
            if (this.mDescriptor != null && this.mEnabled) {
                return true;
            }
            return false;
        }

        public final boolean isSelected() {
            MediaRouter.checkCallingThread();
            if (MediaRouter.getGlobalRouter().getSelectedRoute() == this) {
                return true;
            }
            return false;
        }

        public final boolean matchesSelector(MediaRouteSelector mediaRouteSelector) {
            if (mediaRouteSelector != null) {
                MediaRouter.checkCallingThread();
                ArrayList arrayList = this.mControlFilters;
                if (arrayList == null) {
                    return false;
                }
                mediaRouteSelector.ensureControlCategories();
                if (mediaRouteSelector.mControlCategories.isEmpty()) {
                    return false;
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    IntentFilter intentFilter = (IntentFilter) it.next();
                    if (intentFilter != null) {
                        Iterator it2 = mediaRouteSelector.mControlCategories.iterator();
                        while (it2.hasNext()) {
                            if (intentFilter.hasCategory((String) it2.next())) {
                                return true;
                            }
                        }
                    }
                }
                return false;
            }
            throw new IllegalArgumentException("selector must not be null");
        }

        /* JADX WARN: Code restructure failed: missing block: B:62:0x00fc, code lost:
        
            if (r5.hasNext() == false) goto L65;
         */
        /* JADX WARN: Removed duplicated region for block: B:102:0x01f6  */
        /* JADX WARN: Removed duplicated region for block: B:130:0x0257  */
        /* JADX WARN: Removed duplicated region for block: B:133:0x025c  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0100 A[EDGE_INSN: B:54:0x0100->B:64:0x0100 BREAK  A[LOOP:0: B:25:0x008c->B:55:?], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:55:? A[LOOP:0: B:25:0x008c->B:55:?, LOOP_END, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:66:0x0103  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x011b  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x012f  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x0141  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x0154  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0167  */
        /* JADX WARN: Removed duplicated region for block: B:84:0x017a  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x018d  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x01a3  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x01bc  */
        /* JADX WARN: Removed duplicated region for block: B:96:0x01d0  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x01ef  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final int maybeUpdateDescriptor(androidx.mediarouter.media.MediaRouteDescriptor r14) {
            /*
                Method dump skipped, instructions count: 606
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.media.MediaRouter.RouteInfo.maybeUpdateDescriptor(androidx.mediarouter.media.MediaRouteDescriptor):int");
        }

        public final void requestSetVolume(int i) {
            MediaRouteProvider.RouteController routeController;
            MediaRouteProvider.RouteController routeController2;
            MediaRouter.checkCallingThread();
            GlobalMediaRouter globalRouter = MediaRouter.getGlobalRouter();
            int min = Math.min(this.mVolumeMax, Math.max(0, i));
            if (this == globalRouter.mSelectedRoute && (routeController2 = globalRouter.mSelectedRouteController) != null) {
                routeController2.onSetVolume(min);
                return;
            }
            HashMap hashMap = (HashMap) globalRouter.mRouteControllerMap;
            if (!hashMap.isEmpty() && (routeController = (MediaRouteProvider.RouteController) hashMap.get(this.mUniqueId)) != null) {
                routeController.onSetVolume(min);
            }
        }

        public final void requestUpdateVolume(int i) {
            MediaRouteProvider.RouteController routeController;
            MediaRouteProvider.RouteController routeController2;
            MediaRouter.checkCallingThread();
            if (i != 0) {
                GlobalMediaRouter globalRouter = MediaRouter.getGlobalRouter();
                if (this == globalRouter.mSelectedRoute && (routeController2 = globalRouter.mSelectedRouteController) != null) {
                    routeController2.onUpdateVolume(i);
                    return;
                }
                HashMap hashMap = (HashMap) globalRouter.mRouteControllerMap;
                if (!hashMap.isEmpty() && (routeController = (MediaRouteProvider.RouteController) hashMap.get(this.mUniqueId)) != null) {
                    routeController.onUpdateVolume(i);
                }
            }
        }

        public final void select() {
            MediaRouter.checkCallingThread();
            MediaRouter.getGlobalRouter().selectRoute(this, 3);
        }

        public final boolean supportsControlCategory(String str) {
            MediaRouter.checkCallingThread();
            ArrayList arrayList = this.mControlFilters;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((IntentFilter) arrayList.get(i)).hasCategory(str)) {
                    return true;
                }
            }
            return false;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("MediaRouter.RouteInfo{ uniqueId=" + this.mUniqueId + ", name=" + this.mName + ", description=" + this.mDescription + ", iconUri=" + this.mIconUri + ", enabled=" + this.mEnabled + ", connectionState=" + this.mConnectionState + ", canDisconnect=" + this.mCanDisconnect + ", playbackType=" + this.mPlaybackType + ", playbackStream=" + this.mPlaybackStream + ", deviceType=" + this.mDeviceType + ", volumeHandling=" + this.mVolumeHandling + ", volume=" + this.mVolume + ", volumeMax=" + this.mVolumeMax + ", presentationDisplayId=" + this.mPresentationDisplayId + ", extras=" + this.mExtras + ", settingsIntent=" + this.mSettingsIntent + ", providerPackageName=" + this.mProvider.mMetadata.mComponentName.getPackageName());
            if (isGroup()) {
                sb.append(", members=[");
                int size = ((ArrayList) this.mMemberRoutes).size();
                for (int i = 0; i < size; i++) {
                    if (i > 0) {
                        sb.append(", ");
                    }
                    if (((ArrayList) this.mMemberRoutes).get(i) != this) {
                        sb.append(((RouteInfo) ((ArrayList) this.mMemberRoutes).get(i)).mUniqueId);
                    }
                }
                sb.append(']');
            }
            sb.append(" }");
            return sb.toString();
        }

        public final void updateDynamicDescriptors(Collection collection) {
            ((ArrayList) this.mMemberRoutes).clear();
            if (this.mDynamicGroupDescriptors == null) {
                this.mDynamicGroupDescriptors = new ArrayMap();
            }
            this.mDynamicGroupDescriptors.clear();
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor dynamicRouteDescriptor = (MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor) it.next();
                RouteInfo findRouteByDescriptorId = this.mProvider.findRouteByDescriptorId(dynamicRouteDescriptor.mMediaRouteDescriptor.getId());
                if (findRouteByDescriptorId != null) {
                    this.mDynamicGroupDescriptors.put(findRouteByDescriptorId.mUniqueId, dynamicRouteDescriptor);
                    int i = dynamicRouteDescriptor.mSelectionState;
                    if (i == 2 || i == 3) {
                        ((ArrayList) this.mMemberRoutes).add(findRouteByDescriptorId);
                    }
                }
            }
            MediaRouter.getGlobalRouter().mCallbackHandler.post(259, this);
        }
    }

    public MediaRouter(Context context) {
        this.mContext = context;
    }

    public static void checkCallingThread() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
        } else {
            throw new IllegalStateException("The media router service must only be accessed on the application's main thread.");
        }
    }

    public static GlobalMediaRouter getGlobalRouter() {
        GlobalMediaRouter globalMediaRouter = sGlobal;
        if (globalMediaRouter == null) {
            return null;
        }
        globalMediaRouter.ensureInitialized();
        return sGlobal;
    }

    public static MediaRouter getInstance(Context context) {
        if (context != null) {
            checkCallingThread();
            if (sGlobal == null) {
                sGlobal = new GlobalMediaRouter(context.getApplicationContext());
            }
            ArrayList arrayList = sGlobal.mRouters;
            int size = arrayList.size();
            while (true) {
                size--;
                if (size >= 0) {
                    MediaRouter mediaRouter = (MediaRouter) ((WeakReference) arrayList.get(size)).get();
                    if (mediaRouter == null) {
                        arrayList.remove(size);
                    } else if (mediaRouter.mContext == context) {
                        return mediaRouter;
                    }
                } else {
                    MediaRouter mediaRouter2 = new MediaRouter(context);
                    arrayList.add(new WeakReference(mediaRouter2));
                    return mediaRouter2;
                }
            }
        } else {
            throw new IllegalArgumentException("context must not be null");
        }
    }

    public static RouteInfo getSelectedRoute() {
        checkCallingThread();
        return getGlobalRouter().getSelectedRoute();
    }

    public static boolean isRouteAvailable(MediaRouteSelector mediaRouteSelector) {
        if (mediaRouteSelector != null) {
            checkCallingThread();
            GlobalMediaRouter globalRouter = getGlobalRouter();
            globalRouter.getClass();
            if (mediaRouteSelector.isEmpty()) {
                return false;
            }
            if (!globalRouter.mLowRam) {
                ArrayList arrayList = globalRouter.mRoutes;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    RouteInfo routeInfo = (RouteInfo) arrayList.get(i);
                    if (routeInfo.isDefaultOrBluetooth() || !routeInfo.matchesSelector(mediaRouteSelector)) {
                    }
                }
                return false;
            }
            return true;
        }
        throw new IllegalArgumentException("selector must not be null");
    }

    public static void unselect(int i) {
        if (i >= 0 && i <= 3) {
            checkCallingThread();
            GlobalMediaRouter globalRouter = getGlobalRouter();
            RouteInfo chooseFallbackRoute = globalRouter.chooseFallbackRoute();
            if (globalRouter.getSelectedRoute() != chooseFallbackRoute) {
                globalRouter.selectRoute(chooseFallbackRoute, i);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Unsupported reason to unselect route");
    }

    public final void addCallback(MediaRouteSelector mediaRouteSelector, Callback callback, int i) {
        CallbackRecord callbackRecord;
        if (mediaRouteSelector != null) {
            if (callback != null) {
                checkCallingThread();
                if (DEBUG) {
                    Log.d("MediaRouter", "addCallback: selector=" + mediaRouteSelector + ", callback=" + callback + ", flags=" + Integer.toHexString(i));
                }
                ArrayList arrayList = this.mCallbackRecords;
                int size = arrayList.size();
                boolean z = false;
                int i2 = 0;
                while (true) {
                    if (i2 < size) {
                        if (((CallbackRecord) arrayList.get(i2)).mCallback == callback) {
                            break;
                        } else {
                            i2++;
                        }
                    } else {
                        i2 = -1;
                        break;
                    }
                }
                if (i2 < 0) {
                    callbackRecord = new CallbackRecord(this, callback);
                    arrayList.add(callbackRecord);
                } else {
                    callbackRecord = (CallbackRecord) arrayList.get(i2);
                }
                boolean z2 = true;
                if (i != callbackRecord.mFlags) {
                    callbackRecord.mFlags = i;
                    z = true;
                }
                long elapsedRealtime = SystemClock.elapsedRealtime();
                if ((i & 1) != 0) {
                    z = true;
                }
                callbackRecord.mTimestamp = elapsedRealtime;
                MediaRouteSelector mediaRouteSelector2 = callbackRecord.mSelector;
                mediaRouteSelector2.ensureControlCategories();
                mediaRouteSelector.ensureControlCategories();
                if (!mediaRouteSelector2.mControlCategories.containsAll(mediaRouteSelector.mControlCategories)) {
                    MediaRouteSelector.Builder builder = new MediaRouteSelector.Builder(callbackRecord.mSelector);
                    builder.addControlCategories(mediaRouteSelector.getControlCategories());
                    callbackRecord.mSelector = builder.build();
                } else {
                    z2 = z;
                }
                if (z2) {
                    getGlobalRouter().updateDiscoveryRequest();
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("callback must not be null");
        }
        throw new IllegalArgumentException("selector must not be null");
    }

    public final void removeCallback(Callback callback) {
        if (callback != null) {
            checkCallingThread();
            if (DEBUG) {
                Log.d("MediaRouter", "removeCallback: callback=" + callback);
            }
            ArrayList arrayList = this.mCallbackRecords;
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i < size) {
                    if (((CallbackRecord) arrayList.get(i)).mCallback == callback) {
                        break;
                    } else {
                        i++;
                    }
                } else {
                    i = -1;
                    break;
                }
            }
            if (i >= 0) {
                arrayList.remove(i);
                getGlobalRouter().updateDiscoveryRequest();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("callback must not be null");
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class Callback {
        public void onProviderAdded(MediaRouter mediaRouter) {
        }

        public void onProviderChanged(MediaRouter mediaRouter) {
        }

        public void onProviderRemoved(MediaRouter mediaRouter) {
        }

        public void onRouteAdded(MediaRouter mediaRouter) {
        }

        public void onRouteRemoved(MediaRouter mediaRouter) {
        }

        public void onRouteSelected(RouteInfo routeInfo) {
        }

        public void onRouteVolumeChanged(RouteInfo routeInfo) {
        }

        public void onRouterParamsChanged(MediaRouterParams mediaRouterParams) {
        }

        public void onRouteUnselected() {
        }

        public void onRouteChanged(MediaRouter mediaRouter, RouteInfo routeInfo) {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class ControlRequestCallback {
        public void onResult(Bundle bundle) {
        }

        public void onError(String str, Bundle bundle) {
        }
    }
}

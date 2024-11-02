package android.service.media;

import android.app.Service;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ParceledListSlice;
import android.media.browse.MediaBrowser;
import android.media.browse.MediaBrowserUtils;
import android.media.session.MediaSession;
import android.media.session.MediaSessionManager;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.service.media.IMediaBrowserService;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Pair;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class MediaBrowserService extends Service {
    private static final boolean DBG = false;
    public static final String KEY_MEDIA_ITEM = "media_item";
    private static final int RESULT_ERROR = -1;
    private static final int RESULT_FLAG_ON_LOAD_ITEM_NOT_IMPLEMENTED = 2;
    private static final int RESULT_FLAG_OPTION_NOT_HANDLED = 1;
    private static final int RESULT_OK = 0;
    public static final String SERVICE_INTERFACE = "android.media.browse.MediaBrowserService";
    private static final String TAG = "MediaBrowserService";
    private ServiceBinder mBinder;
    private ConnectionRecord mCurConnection;
    MediaSession.Token mSession;
    private final ArrayMap<IBinder, ConnectionRecord> mConnections = new ArrayMap<>();
    private final Handler mHandler = new Handler();

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    private @interface ResultFlags {
    }

    public abstract BrowserRoot onGetRoot(String str, int i, Bundle bundle);

    public abstract void onLoadChildren(String str, Result<List<MediaBrowser.MediaItem>> result);

    /* loaded from: classes3.dex */
    public static class ConnectionRecord implements IBinder.DeathRecipient {
        public final IMediaBrowserServiceCallbacks callbacks;
        public final int pid;
        public final String pkg;
        public final BrowserRoot root;
        public final Bundle rootHints;
        public final MediaBrowserService service;
        public final HashMap<String, List<Pair<IBinder, Bundle>>> subscriptions = new HashMap<>();
        public final int uid;

        ConnectionRecord(MediaBrowserService service, String pkg, int pid, int uid, Bundle rootHints, IMediaBrowserServiceCallbacks callbacks, BrowserRoot root) {
            this.service = service;
            this.pkg = pkg;
            this.pid = pid;
            this.uid = uid;
            this.rootHints = rootHints;
            this.callbacks = callbacks;
            this.root = root;
        }

        /* renamed from: android.service.media.MediaBrowserService$ConnectionRecord$1 */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ConnectionRecord.this.service.mConnections.remove(ConnectionRecord.this.callbacks.asBinder());
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            this.service.mHandler.post(new Runnable() { // from class: android.service.media.MediaBrowserService.ConnectionRecord.1
                AnonymousClass1() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord.this.service.mConnections.remove(ConnectionRecord.this.callbacks.asBinder());
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public class Result<T> {
        private Object mDebug;
        private boolean mDetachCalled;
        private int mFlags;
        private boolean mSendResultCalled;

        Result(Object debug) {
            this.mDebug = debug;
        }

        public void sendResult(T result) {
            if (this.mSendResultCalled) {
                throw new IllegalStateException("sendResult() called twice for: " + this.mDebug);
            }
            this.mSendResultCalled = true;
            onResultSent(result, this.mFlags);
        }

        public void detach() {
            if (this.mDetachCalled) {
                throw new IllegalStateException("detach() called when detach() had already been called for: " + this.mDebug);
            }
            if (this.mSendResultCalled) {
                throw new IllegalStateException("detach() called when sendResult() had already been called for: " + this.mDebug);
            }
            this.mDetachCalled = true;
        }

        boolean isDone() {
            return this.mDetachCalled || this.mSendResultCalled;
        }

        void setFlags(int flags) {
            this.mFlags = flags;
        }

        void onResultSent(T result, int flags) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class ServiceBinder extends IMediaBrowserService.Stub {
        private WeakReference<MediaBrowserService> mService;

        /* synthetic */ ServiceBinder(MediaBrowserService mediaBrowserService, ServiceBinderIA serviceBinderIA) {
            this(mediaBrowserService);
        }

        private ServiceBinder(MediaBrowserService service) {
            this.mService = new WeakReference<>(service);
        }

        @Override // android.service.media.IMediaBrowserService
        public void connect(String pkg, Bundle rootHints, IMediaBrowserServiceCallbacks callbacks) {
            MediaBrowserService service = this.mService.get();
            if (service == null) {
                return;
            }
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            if (!service.isValidPackage(pkg, uid)) {
                throw new IllegalArgumentException("Package/uid mismatch: uid=" + uid + " package=" + pkg);
            }
            service.mHandler.post(new Runnable() { // from class: android.service.media.MediaBrowserService.ServiceBinder.1
                final /* synthetic */ IMediaBrowserServiceCallbacks val$callbacks;
                final /* synthetic */ int val$pid;
                final /* synthetic */ String val$pkg;
                final /* synthetic */ Bundle val$rootHints;
                final /* synthetic */ MediaBrowserService val$service;
                final /* synthetic */ int val$uid;

                AnonymousClass1(IMediaBrowserServiceCallbacks callbacks2, MediaBrowserService service2, String pkg2, int pid2, int uid2, Bundle rootHints2) {
                    callbacks = callbacks2;
                    service = service2;
                    pkg = pkg2;
                    pid = pid2;
                    uid = uid2;
                    rootHints = rootHints2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    IBinder b = callbacks.asBinder();
                    service.mConnections.remove(b);
                    MediaBrowserService mediaBrowserService = service;
                    mediaBrowserService.mCurConnection = new ConnectionRecord(mediaBrowserService, pkg, pid, uid, rootHints, callbacks, null);
                    BrowserRoot root = service.onGetRoot(pkg, uid, rootHints);
                    service.mCurConnection = null;
                    if (root == null) {
                        Log.i(MediaBrowserService.TAG, "No root for client " + pkg + " from service " + getClass().getName());
                        try {
                            callbacks.onConnectFailed();
                            return;
                        } catch (RemoteException e) {
                            Log.w(MediaBrowserService.TAG, "Calling onConnectFailed() failed. Ignoring. pkg=" + pkg);
                            return;
                        }
                    }
                    try {
                        ConnectionRecord connection = new ConnectionRecord(service, pkg, pid, uid, rootHints, callbacks, root);
                        service.mConnections.put(b, connection);
                        b.linkToDeath(connection, 0);
                        if (service.mSession != null) {
                            callbacks.onConnect(connection.root.getRootId(), service.mSession, connection.root.getExtras());
                        }
                    } catch (RemoteException e2) {
                        Log.w(MediaBrowserService.TAG, "Calling onConnect() failed. Dropping client. pkg=" + pkg);
                        service.mConnections.remove(b);
                    }
                }
            });
        }

        /* renamed from: android.service.media.MediaBrowserService$ServiceBinder$1 */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            final /* synthetic */ IMediaBrowserServiceCallbacks val$callbacks;
            final /* synthetic */ int val$pid;
            final /* synthetic */ String val$pkg;
            final /* synthetic */ Bundle val$rootHints;
            final /* synthetic */ MediaBrowserService val$service;
            final /* synthetic */ int val$uid;

            AnonymousClass1(IMediaBrowserServiceCallbacks callbacks2, MediaBrowserService service2, String pkg2, int pid2, int uid2, Bundle rootHints2) {
                callbacks = callbacks2;
                service = service2;
                pkg = pkg2;
                pid = pid2;
                uid = uid2;
                rootHints = rootHints2;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder b = callbacks.asBinder();
                service.mConnections.remove(b);
                MediaBrowserService mediaBrowserService = service;
                mediaBrowserService.mCurConnection = new ConnectionRecord(mediaBrowserService, pkg, pid, uid, rootHints, callbacks, null);
                BrowserRoot root = service.onGetRoot(pkg, uid, rootHints);
                service.mCurConnection = null;
                if (root == null) {
                    Log.i(MediaBrowserService.TAG, "No root for client " + pkg + " from service " + getClass().getName());
                    try {
                        callbacks.onConnectFailed();
                        return;
                    } catch (RemoteException e) {
                        Log.w(MediaBrowserService.TAG, "Calling onConnectFailed() failed. Ignoring. pkg=" + pkg);
                        return;
                    }
                }
                try {
                    ConnectionRecord connection = new ConnectionRecord(service, pkg, pid, uid, rootHints, callbacks, root);
                    service.mConnections.put(b, connection);
                    b.linkToDeath(connection, 0);
                    if (service.mSession != null) {
                        callbacks.onConnect(connection.root.getRootId(), service.mSession, connection.root.getExtras());
                    }
                } catch (RemoteException e2) {
                    Log.w(MediaBrowserService.TAG, "Calling onConnect() failed. Dropping client. pkg=" + pkg);
                    service.mConnections.remove(b);
                }
            }
        }

        @Override // android.service.media.IMediaBrowserService
        public void disconnect(IMediaBrowserServiceCallbacks callbacks) {
            MediaBrowserService service = this.mService.get();
            if (service == null) {
                return;
            }
            service.mHandler.post(new Runnable() { // from class: android.service.media.MediaBrowserService.ServiceBinder.2
                final /* synthetic */ IMediaBrowserServiceCallbacks val$callbacks;
                final /* synthetic */ MediaBrowserService val$service;

                AnonymousClass2(IMediaBrowserServiceCallbacks callbacks2, MediaBrowserService service2) {
                    callbacks = callbacks2;
                    service = service2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    IBinder b = callbacks.asBinder();
                    ConnectionRecord old = (ConnectionRecord) service.mConnections.remove(b);
                    if (old != null) {
                        old.callbacks.asBinder().unlinkToDeath(old, 0);
                    }
                }
            });
        }

        /* renamed from: android.service.media.MediaBrowserService$ServiceBinder$2 */
        /* loaded from: classes3.dex */
        class AnonymousClass2 implements Runnable {
            final /* synthetic */ IMediaBrowserServiceCallbacks val$callbacks;
            final /* synthetic */ MediaBrowserService val$service;

            AnonymousClass2(IMediaBrowserServiceCallbacks callbacks2, MediaBrowserService service2) {
                callbacks = callbacks2;
                service = service2;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder b = callbacks.asBinder();
                ConnectionRecord old = (ConnectionRecord) service.mConnections.remove(b);
                if (old != null) {
                    old.callbacks.asBinder().unlinkToDeath(old, 0);
                }
            }
        }

        @Override // android.service.media.IMediaBrowserService
        public void addSubscriptionDeprecated(String id, IMediaBrowserServiceCallbacks callbacks) {
        }

        @Override // android.service.media.IMediaBrowserService
        public void addSubscription(String id, IBinder token, Bundle options, IMediaBrowserServiceCallbacks callbacks) {
            MediaBrowserService service = this.mService.get();
            if (service == null) {
                return;
            }
            service.mHandler.post(new Runnable() { // from class: android.service.media.MediaBrowserService.ServiceBinder.3
                final /* synthetic */ IMediaBrowserServiceCallbacks val$callbacks;
                final /* synthetic */ String val$id;
                final /* synthetic */ Bundle val$options;
                final /* synthetic */ MediaBrowserService val$service;
                final /* synthetic */ IBinder val$token;

                AnonymousClass3(IMediaBrowserServiceCallbacks callbacks2, MediaBrowserService service2, String id2, IBinder token2, Bundle options2) {
                    callbacks = callbacks2;
                    service = service2;
                    id = id2;
                    token = token2;
                    options = options2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    IBinder b = callbacks.asBinder();
                    ConnectionRecord connection = (ConnectionRecord) service.mConnections.get(b);
                    if (connection == null) {
                        Log.w(MediaBrowserService.TAG, "addSubscription for callback that isn't registered id=" + id);
                    } else {
                        service.addSubscription(id, connection, token, options);
                    }
                }
            });
        }

        /* renamed from: android.service.media.MediaBrowserService$ServiceBinder$3 */
        /* loaded from: classes3.dex */
        class AnonymousClass3 implements Runnable {
            final /* synthetic */ IMediaBrowserServiceCallbacks val$callbacks;
            final /* synthetic */ String val$id;
            final /* synthetic */ Bundle val$options;
            final /* synthetic */ MediaBrowserService val$service;
            final /* synthetic */ IBinder val$token;

            AnonymousClass3(IMediaBrowserServiceCallbacks callbacks2, MediaBrowserService service2, String id2, IBinder token2, Bundle options2) {
                callbacks = callbacks2;
                service = service2;
                id = id2;
                token = token2;
                options = options2;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder b = callbacks.asBinder();
                ConnectionRecord connection = (ConnectionRecord) service.mConnections.get(b);
                if (connection == null) {
                    Log.w(MediaBrowserService.TAG, "addSubscription for callback that isn't registered id=" + id);
                } else {
                    service.addSubscription(id, connection, token, options);
                }
            }
        }

        @Override // android.service.media.IMediaBrowserService
        public void removeSubscriptionDeprecated(String id, IMediaBrowserServiceCallbacks callbacks) {
        }

        @Override // android.service.media.IMediaBrowserService
        public void removeSubscription(String id, IBinder token, IMediaBrowserServiceCallbacks callbacks) {
            MediaBrowserService service = this.mService.get();
            if (service == null) {
                return;
            }
            service.mHandler.post(new Runnable() { // from class: android.service.media.MediaBrowserService.ServiceBinder.4
                final /* synthetic */ IMediaBrowserServiceCallbacks val$callbacks;
                final /* synthetic */ String val$id;
                final /* synthetic */ MediaBrowserService val$service;
                final /* synthetic */ IBinder val$token;

                AnonymousClass4(IMediaBrowserServiceCallbacks callbacks2, MediaBrowserService service2, String id2, IBinder token2) {
                    callbacks = callbacks2;
                    service = service2;
                    id = id2;
                    token = token2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    IBinder b = callbacks.asBinder();
                    ConnectionRecord connection = (ConnectionRecord) service.mConnections.get(b);
                    if (connection == null) {
                        Log.w(MediaBrowserService.TAG, "removeSubscription for callback that isn't registered id=" + id);
                    } else if (!service.removeSubscription(id, connection, token)) {
                        Log.w(MediaBrowserService.TAG, "removeSubscription called for " + id + " which is not subscribed");
                    }
                }
            });
        }

        /* renamed from: android.service.media.MediaBrowserService$ServiceBinder$4 */
        /* loaded from: classes3.dex */
        class AnonymousClass4 implements Runnable {
            final /* synthetic */ IMediaBrowserServiceCallbacks val$callbacks;
            final /* synthetic */ String val$id;
            final /* synthetic */ MediaBrowserService val$service;
            final /* synthetic */ IBinder val$token;

            AnonymousClass4(IMediaBrowserServiceCallbacks callbacks2, MediaBrowserService service2, String id2, IBinder token2) {
                callbacks = callbacks2;
                service = service2;
                id = id2;
                token = token2;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder b = callbacks.asBinder();
                ConnectionRecord connection = (ConnectionRecord) service.mConnections.get(b);
                if (connection == null) {
                    Log.w(MediaBrowserService.TAG, "removeSubscription for callback that isn't registered id=" + id);
                } else if (!service.removeSubscription(id, connection, token)) {
                    Log.w(MediaBrowserService.TAG, "removeSubscription called for " + id + " which is not subscribed");
                }
            }
        }

        @Override // android.service.media.IMediaBrowserService
        public void getMediaItem(String mediaId, ResultReceiver receiver, IMediaBrowserServiceCallbacks callbacks) {
            MediaBrowserService service = this.mService.get();
            if (service == null) {
                return;
            }
            service.mHandler.post(new Runnable() { // from class: android.service.media.MediaBrowserService.ServiceBinder.5
                final /* synthetic */ IMediaBrowserServiceCallbacks val$callbacks;
                final /* synthetic */ String val$mediaId;
                final /* synthetic */ ResultReceiver val$receiver;
                final /* synthetic */ MediaBrowserService val$service;

                AnonymousClass5(IMediaBrowserServiceCallbacks callbacks2, MediaBrowserService service2, String mediaId2, ResultReceiver receiver2) {
                    callbacks = callbacks2;
                    service = service2;
                    mediaId = mediaId2;
                    receiver = receiver2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    IBinder b = callbacks.asBinder();
                    ConnectionRecord connection = (ConnectionRecord) service.mConnections.get(b);
                    if (connection == null) {
                        Log.w(MediaBrowserService.TAG, "getMediaItem for callback that isn't registered id=" + mediaId);
                    } else {
                        service.performLoadItem(mediaId, connection, receiver);
                    }
                }
            });
        }

        /* renamed from: android.service.media.MediaBrowserService$ServiceBinder$5 */
        /* loaded from: classes3.dex */
        class AnonymousClass5 implements Runnable {
            final /* synthetic */ IMediaBrowserServiceCallbacks val$callbacks;
            final /* synthetic */ String val$mediaId;
            final /* synthetic */ ResultReceiver val$receiver;
            final /* synthetic */ MediaBrowserService val$service;

            AnonymousClass5(IMediaBrowserServiceCallbacks callbacks2, MediaBrowserService service2, String mediaId2, ResultReceiver receiver2) {
                callbacks = callbacks2;
                service = service2;
                mediaId = mediaId2;
                receiver = receiver2;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder b = callbacks.asBinder();
                ConnectionRecord connection = (ConnectionRecord) service.mConnections.get(b);
                if (connection == null) {
                    Log.w(MediaBrowserService.TAG, "getMediaItem for callback that isn't registered id=" + mediaId);
                } else {
                    service.performLoadItem(mediaId, connection, receiver);
                }
            }
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.mBinder = new ServiceBinder();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (SERVICE_INTERFACE.equals(intent.getAction())) {
            return this.mBinder;
        }
        return null;
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fd, PrintWriter writer, String[] args) {
    }

    public void onLoadChildren(String parentId, Result<List<MediaBrowser.MediaItem>> result, Bundle options) {
        result.setFlags(1);
        onLoadChildren(parentId, result);
    }

    public void onLoadItem(String itemId, Result<MediaBrowser.MediaItem> result) {
        result.setFlags(2);
        result.sendResult(null);
    }

    public void setSessionToken(MediaSession.Token token) {
        if (token == null) {
            throw new IllegalArgumentException("Session token may not be null.");
        }
        if (this.mSession != null) {
            throw new IllegalStateException("The session token has already been set.");
        }
        this.mSession = token;
        this.mHandler.post(new Runnable() { // from class: android.service.media.MediaBrowserService.1
            final /* synthetic */ MediaSession.Token val$token;

            AnonymousClass1(MediaSession.Token token2) {
                token = token2;
            }

            @Override // java.lang.Runnable
            public void run() {
                Iterator<ConnectionRecord> iter = MediaBrowserService.this.mConnections.values().iterator();
                while (iter.hasNext()) {
                    ConnectionRecord connection = iter.next();
                    try {
                        connection.callbacks.onConnect(connection.root.getRootId(), token, connection.root.getExtras());
                    } catch (RemoteException e) {
                        Log.w(MediaBrowserService.TAG, "Connection for " + connection.pkg + " is no longer valid.");
                        iter.remove();
                    }
                }
            }
        });
    }

    /* renamed from: android.service.media.MediaBrowserService$1 */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ MediaSession.Token val$token;

        AnonymousClass1(MediaSession.Token token2) {
            token = token2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator<ConnectionRecord> iter = MediaBrowserService.this.mConnections.values().iterator();
            while (iter.hasNext()) {
                ConnectionRecord connection = iter.next();
                try {
                    connection.callbacks.onConnect(connection.root.getRootId(), token, connection.root.getExtras());
                } catch (RemoteException e) {
                    Log.w(MediaBrowserService.TAG, "Connection for " + connection.pkg + " is no longer valid.");
                    iter.remove();
                }
            }
        }
    }

    public MediaSession.Token getSessionToken() {
        return this.mSession;
    }

    public final Bundle getBrowserRootHints() {
        ConnectionRecord connectionRecord = this.mCurConnection;
        if (connectionRecord == null) {
            throw new IllegalStateException("This should be called inside of onGetRoot or onLoadChildren or onLoadItem methods");
        }
        if (connectionRecord.rootHints == null) {
            return null;
        }
        return new Bundle(this.mCurConnection.rootHints);
    }

    public final MediaSessionManager.RemoteUserInfo getCurrentBrowserInfo() {
        ConnectionRecord connectionRecord = this.mCurConnection;
        if (connectionRecord == null) {
            throw new IllegalStateException("This should be called inside of onGetRoot or onLoadChildren or onLoadItem methods");
        }
        return new MediaSessionManager.RemoteUserInfo(connectionRecord.pkg, this.mCurConnection.pid, this.mCurConnection.uid);
    }

    public void notifyChildrenChanged(String parentId) {
        notifyChildrenChangedInternal(parentId, null);
    }

    public void notifyChildrenChanged(String parentId, Bundle options) {
        if (options == null) {
            throw new IllegalArgumentException("options cannot be null in notifyChildrenChanged");
        }
        notifyChildrenChangedInternal(parentId, options);
    }

    private void notifyChildrenChangedInternal(String parentId, Bundle options) {
        if (parentId == null) {
            throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
        }
        this.mHandler.post(new Runnable() { // from class: android.service.media.MediaBrowserService.2
            final /* synthetic */ Bundle val$options;
            final /* synthetic */ String val$parentId;

            AnonymousClass2(String parentId2, Bundle options2) {
                parentId = parentId2;
                options = options2;
            }

            @Override // java.lang.Runnable
            public void run() {
                for (IBinder binder : MediaBrowserService.this.mConnections.keySet()) {
                    ConnectionRecord connection = (ConnectionRecord) MediaBrowserService.this.mConnections.get(binder);
                    List<Pair<IBinder, Bundle>> callbackList = connection.subscriptions.get(parentId);
                    if (callbackList != null) {
                        for (Pair<IBinder, Bundle> callback : callbackList) {
                            if (MediaBrowserUtils.hasDuplicatedItems(options, callback.second)) {
                                MediaBrowserService.this.performLoadChildren(parentId, connection, callback.second);
                            }
                        }
                    }
                }
            }
        });
    }

    /* renamed from: android.service.media.MediaBrowserService$2 */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements Runnable {
        final /* synthetic */ Bundle val$options;
        final /* synthetic */ String val$parentId;

        AnonymousClass2(String parentId2, Bundle options2) {
            parentId = parentId2;
            options = options2;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (IBinder binder : MediaBrowserService.this.mConnections.keySet()) {
                ConnectionRecord connection = (ConnectionRecord) MediaBrowserService.this.mConnections.get(binder);
                List<Pair<IBinder, Bundle>> callbackList = connection.subscriptions.get(parentId);
                if (callbackList != null) {
                    for (Pair<IBinder, Bundle> callback : callbackList) {
                        if (MediaBrowserUtils.hasDuplicatedItems(options, callback.second)) {
                            MediaBrowserService.this.performLoadChildren(parentId, connection, callback.second);
                        }
                    }
                }
            }
        }
    }

    public boolean isValidPackage(String pkg, int uid) {
        if (pkg == null) {
            return false;
        }
        PackageManager pm = getPackageManager();
        String[] packages = pm.getPackagesForUid(uid);
        for (String str : packages) {
            if (str.equals(pkg)) {
                return true;
            }
        }
        return false;
    }

    public void addSubscription(String id, ConnectionRecord connection, IBinder token, Bundle options) {
        List<Pair<IBinder, Bundle>> callbackList = connection.subscriptions.get(id);
        if (callbackList == null) {
            callbackList = new ArrayList();
        }
        for (Pair<IBinder, Bundle> callback : callbackList) {
            if (token == callback.first && MediaBrowserUtils.areSameOptions(options, callback.second)) {
                return;
            }
        }
        callbackList.add(new Pair<>(token, options));
        connection.subscriptions.put(id, callbackList);
        performLoadChildren(id, connection, options);
    }

    public boolean removeSubscription(String id, ConnectionRecord connection, IBinder token) {
        if (token == null) {
            return connection.subscriptions.remove(id) != null;
        }
        boolean removed = false;
        List<Pair<IBinder, Bundle>> callbackList = connection.subscriptions.get(id);
        if (callbackList != null) {
            Iterator<Pair<IBinder, Bundle>> iter = callbackList.iterator();
            while (iter.hasNext()) {
                if (token == iter.next().first) {
                    removed = true;
                    iter.remove();
                }
            }
            if (callbackList.size() == 0) {
                connection.subscriptions.remove(id);
            }
        }
        return removed;
    }

    /* renamed from: android.service.media.MediaBrowserService$3 */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 extends Result<List<MediaBrowser.MediaItem>> {
        final /* synthetic */ ConnectionRecord val$connection;
        final /* synthetic */ Bundle val$options;
        final /* synthetic */ String val$parentId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(Object debug, ConnectionRecord connectionRecord, String str, Bundle bundle) {
            super(debug);
            connection = connectionRecord;
            parentId = str;
            options = bundle;
        }

        @Override // android.service.media.MediaBrowserService.Result
        public void onResultSent(List<MediaBrowser.MediaItem> list, int flag) {
            ParceledListSlice<MediaBrowser.MediaItem> pls;
            if (MediaBrowserService.this.mConnections.get(connection.callbacks.asBinder()) != connection) {
                return;
            }
            List<MediaBrowser.MediaItem> filteredList = (flag & 1) != 0 ? MediaBrowserService.this.applyOptions(list, options) : list;
            if (filteredList == null) {
                pls = null;
            } else {
                pls = new ParceledListSlice<>(filteredList);
                pls.setInlineCountLimit(1);
            }
            try {
                connection.callbacks.onLoadChildren(parentId, pls, options);
            } catch (RemoteException e) {
                Log.w(MediaBrowserService.TAG, "Calling onLoadChildren() failed for id=" + parentId + " package=" + connection.pkg);
            }
        }
    }

    public void performLoadChildren(String parentId, ConnectionRecord connection, Bundle options) {
        Result<List<MediaBrowser.MediaItem>> result = new Result<List<MediaBrowser.MediaItem>>(parentId) { // from class: android.service.media.MediaBrowserService.3
            final /* synthetic */ ConnectionRecord val$connection;
            final /* synthetic */ Bundle val$options;
            final /* synthetic */ String val$parentId;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass3(String parentId2, ConnectionRecord connection2, String parentId22, Bundle options2) {
                super(parentId22);
                connection = connection2;
                parentId = parentId22;
                options = options2;
            }

            @Override // android.service.media.MediaBrowserService.Result
            public void onResultSent(List<MediaBrowser.MediaItem> list, int flag) {
                ParceledListSlice<MediaBrowser.MediaItem> pls;
                if (MediaBrowserService.this.mConnections.get(connection.callbacks.asBinder()) != connection) {
                    return;
                }
                List<MediaBrowser.MediaItem> filteredList = (flag & 1) != 0 ? MediaBrowserService.this.applyOptions(list, options) : list;
                if (filteredList == null) {
                    pls = null;
                } else {
                    pls = new ParceledListSlice<>(filteredList);
                    pls.setInlineCountLimit(1);
                }
                try {
                    connection.callbacks.onLoadChildren(parentId, pls, options);
                } catch (RemoteException e) {
                    Log.w(MediaBrowserService.TAG, "Calling onLoadChildren() failed for id=" + parentId + " package=" + connection.pkg);
                }
            }
        };
        this.mCurConnection = connection2;
        if (options2 == null) {
            onLoadChildren(parentId22, result);
        } else {
            onLoadChildren(parentId22, result, options2);
        }
        this.mCurConnection = null;
        if (!result.isDone()) {
            throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + connection2.pkg + " id=" + parentId22);
        }
    }

    public List<MediaBrowser.MediaItem> applyOptions(List<MediaBrowser.MediaItem> list, Bundle options) {
        if (list == null) {
            return null;
        }
        int page = options.getInt(MediaBrowser.EXTRA_PAGE, -1);
        int pageSize = options.getInt(MediaBrowser.EXTRA_PAGE_SIZE, -1);
        if (page == -1 && pageSize == -1) {
            return list;
        }
        int fromIndex = pageSize * page;
        int toIndex = fromIndex + pageSize;
        if (page < 0 || pageSize < 1 || fromIndex >= list.size()) {
            return Collections.EMPTY_LIST;
        }
        if (toIndex > list.size()) {
            toIndex = list.size();
        }
        return list.subList(fromIndex, toIndex);
    }

    /* renamed from: android.service.media.MediaBrowserService$4 */
    /* loaded from: classes3.dex */
    public class AnonymousClass4 extends Result<MediaBrowser.MediaItem> {
        final /* synthetic */ ConnectionRecord val$connection;
        final /* synthetic */ String val$itemId;
        final /* synthetic */ ResultReceiver val$receiver;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(Object debug, ConnectionRecord connectionRecord, String str, ResultReceiver resultReceiver) {
            super(debug);
            connection = connectionRecord;
            itemId = str;
            receiver = resultReceiver;
        }

        @Override // android.service.media.MediaBrowserService.Result
        public void onResultSent(MediaBrowser.MediaItem item, int flag) {
            if (MediaBrowserService.this.mConnections.get(connection.callbacks.asBinder()) != connection) {
                return;
            }
            if ((flag & 2) != 0) {
                receiver.send(-1, null);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable(MediaBrowserService.KEY_MEDIA_ITEM, item);
            receiver.send(0, bundle);
        }
    }

    public void performLoadItem(String itemId, ConnectionRecord connection, ResultReceiver receiver) {
        Result<MediaBrowser.MediaItem> result = new Result<MediaBrowser.MediaItem>(itemId) { // from class: android.service.media.MediaBrowserService.4
            final /* synthetic */ ConnectionRecord val$connection;
            final /* synthetic */ String val$itemId;
            final /* synthetic */ ResultReceiver val$receiver;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass4(String itemId2, ConnectionRecord connection2, String itemId22, ResultReceiver receiver2) {
                super(itemId22);
                connection = connection2;
                itemId = itemId22;
                receiver = receiver2;
            }

            @Override // android.service.media.MediaBrowserService.Result
            public void onResultSent(MediaBrowser.MediaItem item, int flag) {
                if (MediaBrowserService.this.mConnections.get(connection.callbacks.asBinder()) != connection) {
                    return;
                }
                if ((flag & 2) != 0) {
                    receiver.send(-1, null);
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putParcelable(MediaBrowserService.KEY_MEDIA_ITEM, item);
                receiver.send(0, bundle);
            }
        };
        this.mCurConnection = connection2;
        onLoadItem(itemId22, result);
        this.mCurConnection = null;
        if (!result.isDone()) {
            throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=" + itemId22);
        }
    }

    /* loaded from: classes3.dex */
    public static final class BrowserRoot {
        public static final String EXTRA_OFFLINE = "android.service.media.extra.OFFLINE";
        public static final String EXTRA_RECENT = "android.service.media.extra.RECENT";
        public static final String EXTRA_SUGGESTED = "android.service.media.extra.SUGGESTED";
        private final Bundle mExtras;
        private final String mRootId;

        public BrowserRoot(String rootId, Bundle extras) {
            if (rootId == null) {
                throw new IllegalArgumentException("The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead.");
            }
            this.mRootId = rootId;
            this.mExtras = extras;
        }

        public String getRootId() {
            return this.mRootId;
        }

        public Bundle getExtras() {
            return this.mExtras;
        }
    }
}

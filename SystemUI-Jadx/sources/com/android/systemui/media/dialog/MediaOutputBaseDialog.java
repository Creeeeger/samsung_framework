package com.android.systemui.media.dialog;

import android.app.Notification;
import android.bluetooth.BluetoothLeBroadcast;
import android.bluetooth.BluetoothLeBroadcastMetadata;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.media.INearbyMediaDevicesProvider;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.SuggestionsAdapter$$ExternalSyntheticOutline0;
import androidx.core.graphics.drawable.IconCompat;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.settingslib.bluetooth.LocalBluetoothLeBroadcast;
import com.android.systemui.R;
import com.android.systemui.broadcast.BroadcastSender;
import com.android.systemui.media.dialog.MediaOutputController;
import com.android.systemui.media.nearby.NearbyMediaDevicesManager;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.Optional;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class MediaOutputBaseDialog extends SystemUIDialog implements MediaOutputController.Callback, Window.Callback {
    public MediaOutputAdapter mAdapter;
    public Button mAppButton;
    public ImageView mAppResourceIcon;
    public final AnonymousClass1 mBroadcastCallback;
    public ImageView mBroadcastIcon;
    public final BroadcastSender mBroadcastSender;
    public LinearLayout mCastAppLayout;
    public final Context mContext;
    public LinearLayout mDeviceListLayout;
    public final MediaOutputBaseDialog$$ExternalSyntheticLambda0 mDeviceListLayoutListener;
    public RecyclerView mDevicesRecyclerView;
    View mDialogView;
    public boolean mDismissing;
    public Button mDoneButton;
    public final Executor mExecutor;
    public ImageView mHeaderIcon;
    public TextView mHeaderSubtitle;
    public TextView mHeaderTitle;
    public boolean mIsLeBroadcastCallbackRegistered;
    public final int mItemHeight;
    public final LayoutManagerWrapper mLayoutManager;
    public final int mListMaxHeight;
    public final int mListPaddingTop;
    public final Handler mMainThreadHandler;
    public LinearLayout mMediaMetadataSectionLayout;
    public final MediaOutputController mMediaOutputController;
    public boolean mShouldLaunchLeBroadcastDialog;
    public Button mStopButton;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class LayoutManagerWrapper extends LinearLayoutManager {
        public LayoutManagerWrapper(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public final void onLayoutCompleted(RecyclerView.State state) {
            super.onLayoutCompleted(state);
            MediaOutputController mediaOutputController = MediaOutputBaseDialog.this.mMediaOutputController;
            mediaOutputController.mIsRefreshing = false;
            if (mediaOutputController.mNeedRefresh) {
                mediaOutputController.buildMediaItems(mediaOutputController.mCachedMediaDevices);
                MediaOutputBaseDialog mediaOutputBaseDialog = (MediaOutputBaseDialog) mediaOutputController.mCallback;
                mediaOutputBaseDialog.mMainThreadHandler.post(new MediaOutputBaseDialog$$ExternalSyntheticLambda1(mediaOutputBaseDialog, 1));
                mediaOutputController.mNeedRefresh = false;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.systemui.media.dialog.MediaOutputBaseDialog$$ExternalSyntheticLambda0] */
    public MediaOutputBaseDialog(Context context, BroadcastSender broadcastSender, MediaOutputController mediaOutputController) {
        super(context, 2132018533);
        this.mMainThreadHandler = new Handler(Looper.getMainLooper());
        this.mDeviceListLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.android.systemui.media.dialog.MediaOutputBaseDialog$$ExternalSyntheticLambda0
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                MediaOutputBaseDialog mediaOutputBaseDialog = MediaOutputBaseDialog.this;
                ViewGroup.LayoutParams layoutParams = mediaOutputBaseDialog.mDeviceListLayout.getLayoutParams();
                int min = Math.min((mediaOutputBaseDialog.mAdapter.getItemCount() * mediaOutputBaseDialog.mItemHeight) + mediaOutputBaseDialog.mListPaddingTop, mediaOutputBaseDialog.mListMaxHeight);
                if (min != layoutParams.height) {
                    layoutParams.height = min;
                    mediaOutputBaseDialog.mDeviceListLayout.setLayoutParams(layoutParams);
                }
            }
        };
        this.mBroadcastCallback = new AnonymousClass1();
        Context context2 = getContext();
        this.mContext = context2;
        this.mBroadcastSender = broadcastSender;
        this.mMediaOutputController = mediaOutputController;
        this.mLayoutManager = new LayoutManagerWrapper(context2);
        this.mListMaxHeight = context.getResources().getDimensionPixelSize(R.dimen.media_output_dialog_list_max_height);
        this.mItemHeight = context.getResources().getDimensionPixelSize(R.dimen.media_output_dialog_list_item_height);
        this.mListPaddingTop = context2.getResources().getDimensionPixelSize(R.dimen.media_output_dialog_list_padding_top);
        this.mExecutor = Executors.newSingleThreadExecutor();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.mDismissing = true;
        super.dismiss();
    }

    public abstract IconCompat getAppSourceIcon();

    public int getBroadcastIconVisibility() {
        return 8;
    }

    public abstract IconCompat getHeaderIcon();

    public abstract void getHeaderIconRes();

    public abstract int getHeaderIconSize();

    public abstract CharSequence getHeaderSubtitle();

    public abstract CharSequence getHeaderText();

    public CharSequence getStopButtonText() {
        return this.mContext.getText(R.string.keyboard_key_media_stop);
    }

    public abstract int getStopButtonVisibility();

    public void handleLeBroadcastMetadataChanged() {
        if (this.mShouldLaunchLeBroadcastDialog) {
            startLeBroadcastDialog();
            this.mShouldLaunchLeBroadcastDialog = false;
        }
        refresh();
    }

    public void handleLeBroadcastStartFailed() {
        this.mStopButton.setText(R.string.media_output_broadcast_start_failed);
        this.mStopButton.setEnabled(false);
        refresh();
    }

    public void handleLeBroadcastStarted() {
        this.mShouldLaunchLeBroadcastDialog = true;
    }

    public void handleLeBroadcastStopFailed() {
        refresh();
    }

    public void handleLeBroadcastStopped() {
        this.mShouldLaunchLeBroadcastDialog = false;
        refresh();
    }

    public void handleLeBroadcastUpdateFailed() {
        refresh();
    }

    public void handleLeBroadcastUpdated() {
        refresh();
    }

    public boolean isBroadcastSupported() {
        return false;
    }

    @Override // com.android.systemui.statusbar.phone.SystemUIDialog, android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mDialogView = LayoutInflater.from(this.mContext).inflate(R.layout.media_output_dialog, (ViewGroup) null);
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.gravity = 17;
        attributes.setFitInsetsTypes(WindowInsets.Type.statusBars() | WindowInsets.Type.navigationBars());
        attributes.setFitInsetsSides(WindowInsets.Side.all());
        final int i = 1;
        attributes.setFitInsetsIgnoringVisibility(true);
        window.setAttributes(attributes);
        window.setContentView(this.mDialogView);
        window.setTitle(this.mContext.getString(R.string.media_output_dialog_accessibility_title));
        this.mHeaderTitle = (TextView) this.mDialogView.requireViewById(R.id.header_title);
        this.mHeaderSubtitle = (TextView) this.mDialogView.requireViewById(R.id.header_subtitle);
        this.mHeaderIcon = (ImageView) this.mDialogView.requireViewById(R.id.header_icon);
        this.mDevicesRecyclerView = (RecyclerView) this.mDialogView.requireViewById(R.id.list_result);
        this.mMediaMetadataSectionLayout = (LinearLayout) this.mDialogView.requireViewById(R.id.media_metadata_section);
        this.mDeviceListLayout = (LinearLayout) this.mDialogView.requireViewById(R.id.device_list);
        this.mDoneButton = (Button) this.mDialogView.requireViewById(R.id.done);
        this.mStopButton = (Button) this.mDialogView.requireViewById(R.id.stop);
        this.mAppButton = (Button) this.mDialogView.requireViewById(R.id.launch_app_button);
        this.mAppResourceIcon = (ImageView) this.mDialogView.requireViewById(R.id.app_source_icon);
        this.mCastAppLayout = (LinearLayout) this.mDialogView.requireViewById(R.id.cast_app_section);
        this.mBroadcastIcon = (ImageView) this.mDialogView.requireViewById(R.id.broadcast_icon);
        this.mDeviceListLayout.getViewTreeObserver().addOnGlobalLayoutListener(this.mDeviceListLayoutListener);
        LayoutManagerWrapper layoutManagerWrapper = this.mLayoutManager;
        layoutManagerWrapper.mAutoMeasure = true;
        this.mDevicesRecyclerView.setLayoutManager(layoutManagerWrapper);
        this.mDevicesRecyclerView.setAdapter(this.mAdapter);
        final int i2 = 0;
        this.mDevicesRecyclerView.mHasFixedSize = false;
        this.mDoneButton.setOnClickListener(new MediaOutputBaseDialog$$ExternalSyntheticLambda2(this, 0));
        this.mStopButton.setOnClickListener(new MediaOutputBaseDialog$$ExternalSyntheticLambda2(this, 1));
        Button button = this.mAppButton;
        final MediaOutputController mediaOutputController = this.mMediaOutputController;
        Objects.requireNonNull(mediaOutputController);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.media.dialog.MediaOutputBaseDialog$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i2) {
                    case 0:
                    default:
                        mediaOutputController.tryToLaunchMediaApplication(view);
                        return;
                }
            }
        });
        LinearLayout linearLayout = this.mMediaMetadataSectionLayout;
        final MediaOutputController mediaOutputController2 = this.mMediaOutputController;
        Objects.requireNonNull(mediaOutputController2);
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.media.dialog.MediaOutputBaseDialog$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i) {
                    case 0:
                    default:
                        mediaOutputController2.tryToLaunchMediaApplication(view);
                        return;
                }
            }
        });
        this.mDismissing = false;
    }

    public void onStopButtonClick() {
        this.mMediaOutputController.releaseSession();
        dismiss();
    }

    public void refresh() {
        refresh(false);
    }

    @Override // com.android.systemui.statusbar.phone.SystemUIDialog
    public void start() {
        MediaController mediaController;
        MediaOutputController mediaOutputController = this.mMediaOutputController;
        synchronized (mediaOutputController.mMediaDevicesLock) {
            ((CopyOnWriteArrayList) mediaOutputController.mCachedMediaDevices).clear();
            ((CopyOnWriteArrayList) mediaOutputController.mMediaItemList).clear();
        }
        ((ConcurrentHashMap) mediaOutputController.mNearbyDeviceInfoMap).clear();
        NearbyMediaDevicesManager nearbyMediaDevicesManager = mediaOutputController.mNearbyMediaDevicesManager;
        if (nearbyMediaDevicesManager != null) {
            Iterator it = ((ArrayList) nearbyMediaDevicesManager.providers).iterator();
            while (it.hasNext()) {
                ((INearbyMediaDevicesProvider) it.next()).registerNearbyDevicesCallback(mediaOutputController);
            }
            ((ArrayList) nearbyMediaDevicesManager.activeCallbacks).add(mediaOutputController);
        }
        if (!TextUtils.isEmpty(mediaOutputController.mPackageName)) {
            Iterator it2 = ((NotifPipeline) mediaOutputController.mNotifCollection).getAllNotifs().iterator();
            while (true) {
                if (it2.hasNext()) {
                    NotificationEntry notificationEntry = (NotificationEntry) it2.next();
                    Notification notification2 = notificationEntry.mSbn.getNotification();
                    if (notification2.isMediaNotification() && TextUtils.equals(notificationEntry.mSbn.getPackageName(), mediaOutputController.mPackageName)) {
                        mediaController = new MediaController(mediaOutputController.mContext, (MediaSession.Token) notification2.extras.getParcelable("android.mediaSession", MediaSession.Token.class));
                        break;
                    }
                } else {
                    Iterator it3 = mediaOutputController.mMediaSessionManager.getActiveSessionsForUser(null, ((UserTrackerImpl) mediaOutputController.mUserTracker).getUserHandle()).iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            mediaController = (MediaController) it3.next();
                            if (TextUtils.equals(mediaController.getPackageName(), mediaOutputController.mPackageName)) {
                                break;
                            }
                        } else {
                            mediaController = null;
                            break;
                        }
                    }
                }
            }
            mediaOutputController.mMediaController = mediaController;
            if (mediaController != null) {
                mediaController.unregisterCallback(mediaOutputController.mCb);
                if (mediaOutputController.mMediaController.getPlaybackState() != null) {
                    mediaOutputController.mCurrentState = mediaOutputController.mMediaController.getPlaybackState().getState();
                }
                mediaOutputController.mMediaController.registerCallback(mediaOutputController.mCb);
            }
        }
        if (mediaOutputController.mMediaController == null && MediaOutputController.DEBUG) {
            ExifInterface$$ExternalSyntheticOutline0.m(new StringBuilder("No media controller for "), mediaOutputController.mPackageName, "MediaOutputController");
        }
        mediaOutputController.mCallback = this;
        ((CopyOnWriteArrayList) mediaOutputController.mLocalMediaManager.mCallbacks).add(mediaOutputController);
        mediaOutputController.mLocalMediaManager.startScan();
        if (isBroadcastSupported() && !this.mIsLeBroadcastCallbackRegistered) {
            MediaOutputController mediaOutputController2 = this.mMediaOutputController;
            Executor executor = this.mExecutor;
            AnonymousClass1 anonymousClass1 = this.mBroadcastCallback;
            LocalBluetoothLeBroadcast localBluetoothLeBroadcast = mediaOutputController2.mLocalBluetoothManager.mProfileManager.mLeAudioBroadcast;
            if (localBluetoothLeBroadcast == null) {
                Log.d("MediaOutputController", "The broadcast profile is null");
            } else {
                Log.d("MediaOutputController", "Register LE broadcast callback");
                BluetoothLeBroadcast bluetoothLeBroadcast = localBluetoothLeBroadcast.mService;
                if (bluetoothLeBroadcast == null) {
                    Log.d("LocalBluetoothLeBroadcast", "The BluetoothLeBroadcast is null.");
                } else {
                    bluetoothLeBroadcast.registerCallback(executor, anonymousClass1);
                }
            }
            this.mIsLeBroadcastCallbackRegistered = true;
        }
    }

    public final void startLeBroadcastDialog() {
        MediaOutputController mediaOutputController = this.mMediaOutputController;
        BroadcastSender broadcastSender = this.mBroadcastSender;
        mediaOutputController.getClass();
        new MediaOutputBroadcastDialog(mediaOutputController.mContext, true, broadcastSender, new MediaOutputController(mediaOutputController.mContext, mediaOutputController.mPackageName, mediaOutputController.mMediaSessionManager, mediaOutputController.mLocalBluetoothManager, mediaOutputController.mActivityStarter, mediaOutputController.mNotifCollection, mediaOutputController.mDialogLaunchAnimator, Optional.of(mediaOutputController.mNearbyMediaDevicesManager), mediaOutputController.mAudioManager, mediaOutputController.mPowerExemptionManager, mediaOutputController.mKeyGuardManager, mediaOutputController.mFeatureFlags, mediaOutputController.mUserTracker)).show();
        refresh();
    }

    @Override // com.android.systemui.statusbar.phone.SystemUIDialog
    public void stop() {
        if (isBroadcastSupported() && this.mIsLeBroadcastCallbackRegistered) {
            MediaOutputController mediaOutputController = this.mMediaOutputController;
            AnonymousClass1 anonymousClass1 = this.mBroadcastCallback;
            LocalBluetoothLeBroadcast localBluetoothLeBroadcast = mediaOutputController.mLocalBluetoothManager.mProfileManager.mLeAudioBroadcast;
            if (localBluetoothLeBroadcast == null) {
                Log.d("MediaOutputController", "The broadcast profile is null");
            } else {
                Log.d("MediaOutputController", "Unregister LE broadcast callback");
                BluetoothLeBroadcast bluetoothLeBroadcast = localBluetoothLeBroadcast.mService;
                if (bluetoothLeBroadcast == null) {
                    Log.d("LocalBluetoothLeBroadcast", "The BluetoothLeBroadcast is null.");
                } else {
                    bluetoothLeBroadcast.unregisterCallback(anonymousClass1);
                }
            }
            this.mIsLeBroadcastCallbackRegistered = false;
        }
        MediaOutputController mediaOutputController2 = this.mMediaOutputController;
        MediaController mediaController = mediaOutputController2.mMediaController;
        if (mediaController != null) {
            mediaController.unregisterCallback(mediaOutputController2.mCb);
        }
        ((CopyOnWriteArrayList) mediaOutputController2.mLocalMediaManager.mCallbacks).remove(mediaOutputController2);
        mediaOutputController2.mLocalMediaManager.stopScan();
        synchronized (mediaOutputController2.mMediaDevicesLock) {
            ((CopyOnWriteArrayList) mediaOutputController2.mCachedMediaDevices).clear();
            ((CopyOnWriteArrayList) mediaOutputController2.mMediaItemList).clear();
        }
        NearbyMediaDevicesManager nearbyMediaDevicesManager = mediaOutputController2.mNearbyMediaDevicesManager;
        if (nearbyMediaDevicesManager != null) {
            nearbyMediaDevicesManager.unregisterNearbyDevicesCallback(mediaOutputController2);
        }
        ((ConcurrentHashMap) mediaOutputController2.mNearbyDeviceInfoMap).clear();
    }

    public final void updateButtonBackgroundColorFilter() {
        PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(this.mMediaOutputController.mColorButtonBackground, PorterDuff.Mode.SRC_IN);
        this.mDoneButton.getBackground().setColorFilter(porterDuffColorFilter);
        this.mStopButton.getBackground().setColorFilter(porterDuffColorFilter);
        this.mDoneButton.setTextColor(this.mMediaOutputController.mColorPositiveButtonText);
    }

    public final void updateDialogBackgroundColor() {
        this.mDialogView.getBackground().setTint(this.mMediaOutputController.mColorDialogBackground);
        this.mDeviceListLayout.setBackgroundColor(this.mMediaOutputController.mColorDialogBackground);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void refresh(boolean r17) {
        /*
            Method dump skipped, instructions count: 657
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.media.dialog.MediaOutputBaseDialog.refresh(boolean):void");
    }

    public void onBroadcastIconClick() {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.media.dialog.MediaOutputBaseDialog$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements BluetoothLeBroadcast.Callback {
        public AnonymousClass1() {
        }

        public final void onBroadcastMetadataChanged(int i, BluetoothLeBroadcastMetadata bluetoothLeBroadcastMetadata) {
            Log.d("MediaOutputDialog", "onBroadcastMetadataChanged(), broadcastId = " + i + ", metadata = " + bluetoothLeBroadcastMetadata);
            MediaOutputBaseDialog.this.mMainThreadHandler.post(new MediaOutputBaseDialog$1$$ExternalSyntheticLambda0(this, 6));
        }

        public final void onBroadcastStartFailed(int i) {
            ListPopupWindow$$ExternalSyntheticOutline0.m("onBroadcastStartFailed(), reason = ", i, "MediaOutputDialog");
            MediaOutputBaseDialog.this.mMainThreadHandler.postDelayed(new MediaOutputBaseDialog$1$$ExternalSyntheticLambda0(this, 2), 3000L);
        }

        public final void onBroadcastStarted(int i, int i2) {
            SuggestionsAdapter$$ExternalSyntheticOutline0.m("onBroadcastStarted(), reason = ", i, ", broadcastId = ", i2, "MediaOutputDialog");
            MediaOutputBaseDialog.this.mMainThreadHandler.post(new MediaOutputBaseDialog$1$$ExternalSyntheticLambda0(this, 1));
        }

        public final void onBroadcastStopFailed(int i) {
            ListPopupWindow$$ExternalSyntheticOutline0.m("onBroadcastStopFailed(), reason = ", i, "MediaOutputDialog");
            MediaOutputBaseDialog.this.mMainThreadHandler.post(new MediaOutputBaseDialog$1$$ExternalSyntheticLambda0(this, 3));
        }

        public final void onBroadcastStopped(int i, int i2) {
            SuggestionsAdapter$$ExternalSyntheticOutline0.m("onBroadcastStopped(), reason = ", i, ", broadcastId = ", i2, "MediaOutputDialog");
            MediaOutputBaseDialog.this.mMainThreadHandler.post(new MediaOutputBaseDialog$1$$ExternalSyntheticLambda0(this, 0));
        }

        public final void onBroadcastUpdateFailed(int i, int i2) {
            SuggestionsAdapter$$ExternalSyntheticOutline0.m("onBroadcastUpdateFailed(), reason = ", i, ", broadcastId = ", i2, "MediaOutputDialog");
            MediaOutputBaseDialog.this.mMainThreadHandler.post(new MediaOutputBaseDialog$1$$ExternalSyntheticLambda0(this, 4));
        }

        public final void onBroadcastUpdated(int i, int i2) {
            SuggestionsAdapter$$ExternalSyntheticOutline0.m("onBroadcastUpdated(), reason = ", i, ", broadcastId = ", i2, "MediaOutputDialog");
            MediaOutputBaseDialog.this.mMainThreadHandler.post(new MediaOutputBaseDialog$1$$ExternalSyntheticLambda0(this, 5));
        }

        public final void onPlaybackStarted(int i, int i2) {
        }

        public final void onPlaybackStopped(int i, int i2) {
        }
    }
}

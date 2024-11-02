package com.android.systemui.media.dialog;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.media.RouteListingPreference;
import android.os.PowerExemptionManager;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView;
import com.android.settingslib.media.MediaDevice;
import com.android.settingslib.utils.ThreadUtils;
import com.android.systemui.R;
import com.android.systemui.media.dialog.MediaOutputAdapter;
import com.android.systemui.media.dialog.MediaOutputBaseAdapter;
import com.android.systemui.shared.system.SysUiStatsLog;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaOutputAdapter extends MediaOutputBaseAdapter {
    public static final boolean DEBUG = Log.isLoggable("MediaOutputAdapter", 3);
    public final List mMediaItemList;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class MediaDeviceViewHolder extends MediaOutputBaseAdapter.MediaDeviceBaseViewHolder {
        public static final /* synthetic */ int $r8$clinit = 0;

        public MediaDeviceViewHolder(View view) {
            super(view);
        }

        public final void onItemClick(MediaDevice mediaDevice) {
            boolean z;
            MediaDevice currentConnectedMediaDevice = MediaOutputAdapter.this.mController.getCurrentConnectedMediaDevice();
            if (currentConnectedMediaDevice != null && currentConnectedMediaDevice.isHostForOngoingSession()) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                showCustomEndSessionDialog(mediaDevice);
            } else {
                transferOutput(mediaDevice);
            }
        }

        public final void setUpContentDescriptionForView(View view, MediaDevice mediaDevice) {
            int i;
            Context context = MediaOutputAdapter.this.mContext;
            if (mediaDevice.getDeviceType() == 5) {
                i = R.string.accessibility_bluetooth_name;
            } else {
                i = R.string.accessibility_cast_name;
            }
            view.setContentDescription(context.getString(i, mediaDevice.getName()));
            view.setAccessibilityDelegate(new View.AccessibilityDelegate(this) { // from class: com.android.systemui.media.dialog.MediaOutputAdapter.MediaDeviceViewHolder.1
                @Override // android.view.View.AccessibilityDelegate
                public final void onInitializeAccessibilityNodeInfo(View view2, AccessibilityNodeInfo accessibilityNodeInfo) {
                    super.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfo);
                    view2.setOnClickListener(null);
                }
            });
        }

        public void showCustomEndSessionDialog(final MediaDevice mediaDevice) {
            MediaOutputAdapter mediaOutputAdapter = MediaOutputAdapter.this;
            Context context = mediaOutputAdapter.mContext;
            Runnable runnable = new Runnable() { // from class: com.android.systemui.media.dialog.MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MediaOutputAdapter.MediaDeviceViewHolder.this.transferOutput(mediaDevice);
                }
            };
            MediaOutputController mediaOutputController = mediaOutputAdapter.mController;
            new MediaSessionReleaseDialog(context, runnable, mediaOutputController.mColorButtonBackground, mediaOutputController.mColorItemContent).show();
        }

        public final void transferOutput(final MediaDevice mediaDevice) {
            String str;
            MediaOutputAdapter mediaOutputAdapter = MediaOutputAdapter.this;
            if (mediaOutputAdapter.mController.isAnyDeviceTransferring()) {
                return;
            }
            if (mediaOutputAdapter.isCurrentlyConnected(mediaDevice)) {
                Log.d("MediaOutputAdapter", "This device is already connected! : " + mediaDevice.getName());
                return;
            }
            MediaOutputController mediaOutputController = mediaOutputAdapter.mController;
            PowerExemptionManager powerExemptionManager = mediaOutputController.mPowerExemptionManager;
            if (powerExemptionManager != null && (str = mediaOutputController.mPackageName) != null) {
                powerExemptionManager.addToTemporaryAllowList(str, 325, "mediaoutput:remote_transfer", 20000L);
            } else {
                Log.w("MediaOutputController", "powerExemptionManager or package name is null");
            }
            mediaOutputAdapter.mCurrentActivePosition = -1;
            final MediaOutputController mediaOutputController2 = mediaOutputAdapter.mController;
            MediaOutputMetricLogger mediaOutputMetricLogger = mediaOutputController2.mMetricLogger;
            mediaOutputMetricLogger.mSourceDevice = mediaOutputController2.getCurrentConnectedMediaDevice();
            mediaOutputMetricLogger.mTargetDevice = mediaDevice;
            if (MediaOutputMetricLogger.DEBUG) {
                Log.d("MediaOutputMetricLogger", "updateOutputEndPoints - source:" + mediaOutputMetricLogger.mSourceDevice.toString() + " target:" + mediaOutputMetricLogger.mTargetDevice.toString());
            }
            ThreadUtils.postOnBackgroundThread(new Runnable() { // from class: com.android.systemui.media.dialog.MediaOutputController$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MediaOutputController mediaOutputController3 = MediaOutputController.this;
                    mediaOutputController3.mLocalMediaManager.connectDevice(mediaDevice);
                }
            });
            mediaDevice.mState = 1;
            mediaOutputAdapter.notifyDataSetChanged();
        }

        public final boolean updateClickActionBasedOnSelectionBehavior(MediaDevice mediaDevice) {
            MediaOutputController mediaOutputController = MediaOutputAdapter.this.mController;
            MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0 mediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0 = new MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0(this, mediaDevice, 4);
            int selectionBehavior = mediaDevice.getSelectionBehavior();
            int i = 0;
            if (selectionBehavior != 0) {
                if (selectionBehavior == 2) {
                    mediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0 = new MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0(mediaOutputController, mediaDevice, i);
                }
            } else {
                mediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0 = null;
            }
            this.mContainerLayout.setOnClickListener(mediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0);
            this.mIconAreaLayout.setOnClickListener(mediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0);
            if (mediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0 == null) {
                return false;
            }
            return true;
        }

        public final void updateEndClickArea(MediaDevice mediaDevice, boolean z) {
            ViewGroup viewGroup = this.mEndTouchArea;
            MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda1 mediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda1 = null;
            viewGroup.setOnClickListener(null);
            int i = 1;
            if (z) {
                mediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda1 = new MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda1(this, i);
            }
            viewGroup.setOnClickListener(mediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda1);
            viewGroup.setImportantForAccessibility(1);
            viewGroup.setBackgroundTintList(ColorStateList.valueOf(MediaOutputAdapter.this.mController.mColorItemBackground));
            setUpContentDescriptionForView(viewGroup, mediaDevice);
        }

        public final void updateEndClickAreaAsSessionEditing(MediaDevice mediaDevice, int i) {
            ImageView imageView = this.mEndClickIcon;
            imageView.setOnClickListener(null);
            ViewGroup viewGroup = this.mEndTouchArea;
            viewGroup.setOnClickListener(null);
            MediaOutputAdapter mediaOutputAdapter = MediaOutputAdapter.this;
            viewGroup.setBackgroundTintList(ColorStateList.valueOf(mediaOutputAdapter.mController.mColorSeekbarProgress));
            imageView.setImageTintList(ColorStateList.valueOf(mediaOutputAdapter.mController.mColorItemContent));
            imageView.setOnClickListener(new MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0(this, mediaDevice, 5));
            viewGroup.setOnClickListener(new MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda1(this, 2));
            Drawable drawable = mediaOutputAdapter.mContext.getDrawable(i);
            imageView.setImageDrawable(drawable);
            if (drawable instanceof AnimatedVectorDrawable) {
                ((AnimatedVectorDrawable) drawable).start();
            }
        }

        public final void updateGroupableCheckBox(final boolean z, boolean z2, final MediaDevice mediaDevice) {
            CheckBox checkBox = this.mCheckBox;
            CompoundButton.OnCheckedChangeListener onCheckedChangeListener = null;
            checkBox.setOnCheckedChangeListener(null);
            checkBox.setChecked(z);
            if (z2) {
                onCheckedChangeListener = new CompoundButton.OnCheckedChangeListener() { // from class: com.android.systemui.media.dialog.MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda2
                    @Override // android.widget.CompoundButton.OnCheckedChangeListener
                    public final void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
                        MediaOutputAdapter.MediaDeviceViewHolder mediaDeviceViewHolder = MediaOutputAdapter.MediaDeviceViewHolder.this;
                        boolean z4 = z;
                        MediaDevice mediaDevice2 = mediaDevice;
                        boolean z5 = !z4;
                        mediaDeviceViewHolder.disableSeekBar();
                        MediaOutputAdapter mediaOutputAdapter = MediaOutputAdapter.this;
                        if (z5 && MediaOutputBaseAdapter.isDeviceIncluded(mediaOutputAdapter.mController.mLocalMediaManager.getSelectableMediaDevice(), mediaDevice2)) {
                            MediaOutputController mediaOutputController = mediaOutputAdapter.mController;
                            MediaOutputMetricLogger mediaOutputMetricLogger = mediaOutputController.mMetricLogger;
                            if (MediaOutputMetricLogger.DEBUG) {
                                mediaOutputMetricLogger.getClass();
                                Log.d("MediaOutputMetricLogger", "logInteraction - Expansion");
                            }
                            mediaOutputMetricLogger.getClass();
                            SysUiStatsLog.write(0, MediaOutputMetricLogger.getInteractionDeviceType(mediaDevice2), mediaOutputMetricLogger.getLoggingPackageName());
                            mediaOutputController.mLocalMediaManager.addDeviceToPlayMedia(mediaDevice2);
                            return;
                        }
                        if (!z5 && MediaOutputBaseAdapter.isDeviceIncluded(mediaOutputAdapter.mController.mLocalMediaManager.getDeselectableMediaDevice(), mediaDevice2)) {
                            mediaOutputAdapter.mController.mLocalMediaManager.removeDeviceFromPlayMedia(mediaDevice2);
                        }
                    }
                };
            }
            checkBox.setOnCheckedChangeListener(onCheckedChangeListener);
            checkBox.setEnabled(z2);
            int i = MediaOutputAdapter.this.mController.mColorItemContent;
            checkBox.setButtonTintList(new ColorStateList(new int[][]{new int[]{android.R.attr.state_checked}, new int[0]}, new int[]{i, i}));
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class MediaGroupDividerViewHolder extends RecyclerView.ViewHolder {
        public final TextView mTitleText;

        public MediaGroupDividerViewHolder(View view) {
            super(view);
            this.mTitleText = (TextView) view.requireViewById(R.id.title);
        }
    }

    public MediaOutputAdapter(MediaOutputController mediaOutputController) {
        super(mediaOutputController);
        this.mMediaItemList = new CopyOnWriteArrayList();
        setHasStableIds(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return ((CopyOnWriteArrayList) this.mMediaItemList).size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int i) {
        List list = this.mMediaItemList;
        if (i >= ((CopyOnWriteArrayList) list).size()) {
            ListPopupWindow$$ExternalSyntheticOutline0.m("Incorrect position for item id: ", i, "MediaOutputAdapter");
            return i;
        }
        if (((MediaItem) ((CopyOnWriteArrayList) list).get(i)).mMediaDeviceOptional.isPresent()) {
            return ((MediaDevice) r1.mMediaDeviceOptional.get()).getId().hashCode();
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        List list = this.mMediaItemList;
        if (i >= ((CopyOnWriteArrayList) list).size()) {
            ListPopupWindow$$ExternalSyntheticOutline0.m("Incorrect position for item type: ", i, "MediaOutputAdapter");
            return 1;
        }
        return ((MediaItem) ((CopyOnWriteArrayList) list).get(i)).mMediaItemType;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        boolean z;
        boolean z2;
        boolean z3;
        Drawable drawable;
        float f;
        boolean z4;
        boolean z5;
        Drawable drawable2;
        float f2;
        boolean z6;
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) this.mMediaItemList;
        if (i >= copyOnWriteArrayList.size()) {
            if (DEBUG) {
                StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Incorrect position: ", i, " list size: ");
                m.append(copyOnWriteArrayList.size());
                Log.d("MediaOutputAdapter", m.toString());
                return;
            }
            return;
        }
        MediaItem mediaItem = (MediaItem) copyOnWriteArrayList.get(i);
        int i2 = mediaItem.mMediaItemType;
        int i3 = 3;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    ListPopupWindow$$ExternalSyntheticOutline0.m("Incorrect position: ", i, "MediaOutputAdapter");
                    return;
                }
                MediaDeviceViewHolder mediaDeviceViewHolder = (MediaDeviceViewHolder) viewHolder;
                MediaOutputAdapter mediaOutputAdapter = MediaOutputAdapter.this;
                mediaDeviceViewHolder.mTitleText.setTextColor(mediaOutputAdapter.mController.mColorItemContent);
                mediaDeviceViewHolder.mCheckBox.setVisibility(8);
                mediaDeviceViewHolder.setSingleLineLayout(mediaOutputAdapter.mContext.getText(R.string.media_output_dialog_pairing_new), false, false, false, false);
                Drawable drawable3 = mediaOutputAdapter.mContext.getDrawable(R.drawable.ic_add);
                ImageView imageView = mediaDeviceViewHolder.mTitleIcon;
                imageView.setImageDrawable(drawable3);
                MediaOutputController mediaOutputController = mediaOutputAdapter.mController;
                imageView.setImageTintList(ColorStateList.valueOf(mediaOutputController.mColorItemContent));
                mediaDeviceViewHolder.mIconAreaLayout.setBackgroundTintList(ColorStateList.valueOf(mediaOutputController.mColorItemBackground));
                mediaDeviceViewHolder.mContainerLayout.setOnClickListener(new MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda1(mediaOutputController, i3));
                return;
            }
            MediaGroupDividerViewHolder mediaGroupDividerViewHolder = (MediaGroupDividerViewHolder) viewHolder;
            int i4 = MediaOutputAdapter.this.mController.mColorItemContent;
            TextView textView = mediaGroupDividerViewHolder.mTitleText;
            textView.setTextColor(i4);
            textView.setText(mediaItem.mTitle);
            return;
        }
        MediaDeviceViewHolder mediaDeviceViewHolder2 = (MediaDeviceViewHolder) viewHolder;
        MediaDevice mediaDevice = (MediaDevice) mediaItem.mMediaDeviceOptional.get();
        mediaDeviceViewHolder2.mDeviceId = mediaDevice.getId();
        mediaDeviceViewHolder2.mCheckBox.setVisibility(8);
        ImageView imageView2 = mediaDeviceViewHolder2.mStatusIcon;
        imageView2.setVisibility(8);
        ViewGroup viewGroup = mediaDeviceViewHolder2.mEndTouchArea;
        viewGroup.setVisibility(8);
        viewGroup.setImportantForAccessibility(2);
        ViewGroup viewGroup2 = mediaDeviceViewHolder2.mContainerLayout;
        viewGroup2.setOnClickListener(null);
        viewGroup2.setContentDescription(null);
        MediaOutputBaseAdapter mediaOutputBaseAdapter = MediaOutputBaseAdapter.this;
        int i5 = mediaOutputBaseAdapter.mController.mColorItemContent;
        TextView textView2 = mediaDeviceViewHolder2.mTitleText;
        textView2.setTextColor(i5);
        MediaOutputController mediaOutputController2 = mediaOutputBaseAdapter.mController;
        int i6 = mediaOutputController2.mColorItemContent;
        TextView textView3 = mediaDeviceViewHolder2.mSubTitleText;
        textView3.setTextColor(i6);
        textView3.setSelected(true);
        int i7 = mediaOutputController2.mColorItemContent;
        TextView textView4 = mediaDeviceViewHolder2.mTwoLineTitleText;
        textView4.setTextColor(i7);
        mediaDeviceViewHolder2.mVolumeValueText.setTextColor(mediaOutputController2.mColorItemContent);
        mediaDeviceViewHolder2.mSeekBar.setProgressTintList(ColorStateList.valueOf(mediaOutputController2.mColorSeekbarProgress));
        MediaOutputAdapter mediaOutputAdapter2 = MediaOutputAdapter.this;
        if (mediaOutputAdapter2.mController.mAudioManager.getMutingExpectedDevice() != null) {
            z = true;
        } else {
            z = false;
        }
        boolean isCurrentlyConnected = mediaOutputAdapter2.isCurrentlyConnected(mediaDevice);
        if (mediaDeviceViewHolder2.mSeekBar.getVisibility() == 8) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (mediaOutputAdapter2.mCurrentActivePosition == i) {
            mediaOutputAdapter2.mCurrentActivePosition = -1;
        }
        imageView2.setVisibility(8);
        viewGroup2.setFocusable(true);
        viewGroup2.setImportantForAccessibility(0);
        MediaOutputController mediaOutputController3 = mediaOutputAdapter2.mController;
        boolean isAnyDeviceTransferring = mediaOutputController3.isAnyDeviceTransferring();
        ProgressBar progressBar = mediaDeviceViewHolder2.mProgressBar;
        if (isAnyDeviceTransferring) {
            if (mediaDevice.mState == 1 && !mediaOutputController3.hasAdjustVolumeUserRestriction()) {
                mediaDeviceViewHolder2.setUpDeviceIcon(mediaDevice);
                progressBar.getIndeterminateDrawable().setTintList(ColorStateList.valueOf(mediaOutputAdapter2.mController.mColorItemContent));
                mediaDeviceViewHolder2.setSingleLineLayout(mediaDevice.getName(), false, true, false, false);
                return;
            } else {
                mediaDeviceViewHolder2.setUpDeviceIcon(mediaDevice);
                mediaDeviceViewHolder2.setSingleLineLayout(mediaDevice.getName(), false, false, false, false);
                return;
            }
        }
        boolean isMutingExpectedDevice = mediaDevice.isMutingExpectedDevice();
        FrameLayout frameLayout = mediaDeviceViewHolder2.mIconAreaLayout;
        if (isMutingExpectedDevice && !mediaOutputController3.isCurrentConnectedDeviceRemote()) {
            mediaDeviceViewHolder2.updateTitleIcon(R.drawable.media_output_icon_volume, mediaOutputController3.mColorItemContent);
            mediaOutputAdapter2.mCurrentActivePosition = i;
            MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0 mediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0 = new MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0(mediaDeviceViewHolder2, mediaDevice, 1);
            viewGroup2.setOnClickListener(mediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0);
            frameLayout.setOnClickListener(mediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0);
            mediaDeviceViewHolder2.setSingleLineLayout(mediaDevice.getName(), false, false, false, false);
            mediaDeviceViewHolder2.disableSeekBar();
            mediaDeviceViewHolder2.updateTitleIcon(R.drawable.media_output_icon_volume, mediaOutputController2.mColorItemContent);
            Drawable mutate = mediaOutputBaseAdapter.mContext.getDrawable(R.drawable.media_output_item_background_active).mutate();
            FrameLayout frameLayout2 = mediaDeviceViewHolder2.mItemLayout;
            frameLayout2.setBackground(mutate);
            frameLayout2.setBackgroundTintList(ColorStateList.valueOf(mediaOutputController2.mColorConnectedItemBackground));
            frameLayout.setBackgroundTintList(ColorStateList.valueOf(mediaOutputController2.mColorConnectedItemBackground));
            return;
        }
        RouteListingPreference.Item item = mediaDevice.mItem;
        if (item != null && item.getSubText() != 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        ImageView imageView3 = mediaDeviceViewHolder2.mTitleIcon;
        int i8 = R.drawable.media_output_status_edit_session;
        int i9 = R.drawable.ic_sound_bars_anim;
        if (z3) {
            if (mediaDevice.hasOngoingSession() && (isCurrentlyConnected || MediaOutputBaseAdapter.isDeviceIncluded(mediaOutputController3.getSelectedMediaDevice(), mediaDevice))) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (mediaDevice.isHostForOngoingSession() && z4) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (z4) {
                mediaOutputAdapter2.mCurrentActivePosition = i;
                mediaDeviceViewHolder2.updateTitleIcon(R.drawable.media_output_icon_volume, mediaOutputController3.mColorItemContent);
                textView3.setText(mediaDevice.getSubtextString());
                textView3.setAlpha(1.0f);
                imageView3.setAlpha(1.0f);
                textView4.setAlpha(1.0f);
                imageView2.setAlpha(1.0f);
                if (z5) {
                    i9 = R.drawable.media_output_status_edit_session;
                }
                mediaDeviceViewHolder2.updateEndClickAreaAsSessionEditing(mediaDevice, i9);
                mediaDeviceViewHolder2.setTwoLineLayout(mediaDevice, true, true, false, true);
                mediaDeviceViewHolder2.initSeekbar(mediaDevice, z2);
                return;
            }
            if (isCurrentlyConnected) {
                mediaOutputAdapter2.mCurrentActivePosition = i;
                mediaDeviceViewHolder2.updateTitleIcon(R.drawable.media_output_icon_volume, mediaOutputController3.mColorItemContent);
                mediaDeviceViewHolder2.initSeekbar(mediaDevice, z2);
            } else {
                mediaDeviceViewHolder2.setUpDeviceIcon(mediaDevice);
            }
            textView3.setText(mediaDevice.getSubtextString());
            if (mediaDevice.hasOngoingSession()) {
                drawable2 = mediaOutputAdapter2.mContext.getDrawable(R.drawable.ic_sound_bars_anim);
            } else {
                Context context = mediaOutputAdapter2.mContext;
                int selectionBehavior = mediaDevice.getSelectionBehavior();
                if (selectionBehavior != 0) {
                    if (selectionBehavior != 2) {
                        drawable2 = null;
                    } else {
                        drawable2 = context.getDrawable(R.drawable.media_output_status_help);
                    }
                } else {
                    drawable2 = context.getDrawable(R.drawable.media_output_status_failed);
                }
            }
            if (drawable2 != null) {
                imageView2.setImageDrawable(drawable2);
                imageView2.setImageTintList(ColorStateList.valueOf(mediaOutputAdapter2.mController.mColorItemContent));
                if (drawable2 instanceof AnimatedVectorDrawable) {
                    ((AnimatedVectorDrawable) drawable2).start();
                }
            }
            if (mediaDeviceViewHolder2.updateClickActionBasedOnSelectionBehavior(mediaDevice)) {
                f2 = 1.0f;
            } else {
                f2 = 0.5f;
            }
            textView3.setAlpha(f2);
            imageView3.setAlpha(f2);
            textView4.setAlpha(f2);
            imageView2.setAlpha(f2);
            if (drawable2 != null) {
                z6 = true;
            } else {
                z6 = false;
            }
            mediaDeviceViewHolder2.setTwoLineLayout(mediaDevice, isCurrentlyConnected, isCurrentlyConnected, z6, false);
            return;
        }
        int i10 = mediaDevice.mState;
        if (i10 == 3) {
            mediaDeviceViewHolder2.setUpDeviceIcon(mediaDevice);
            imageView2.setImageDrawable(mediaOutputAdapter2.mContext.getDrawable(R.drawable.media_output_status_failed));
            imageView2.setImageTintList(ColorStateList.valueOf(mediaOutputController3.mColorItemContent));
            textView3.setText(R.string.media_output_dialog_connect_failed);
            MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0 mediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda02 = new MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0(mediaDeviceViewHolder2, mediaDevice, 2);
            viewGroup2.setOnClickListener(mediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda02);
            frameLayout.setOnClickListener(mediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda02);
            mediaDeviceViewHolder2.setTwoLineLayout(mediaDevice, false, false, true, false);
            return;
        }
        if (i10 == 5) {
            mediaDeviceViewHolder2.setUpDeviceIcon(mediaDevice);
            progressBar.getIndeterminateDrawable().setTintList(ColorStateList.valueOf(mediaOutputAdapter2.mController.mColorItemContent));
            mediaDeviceViewHolder2.setSingleLineLayout(mediaDevice.getName(), false, true, false, false);
            return;
        }
        if (((ArrayList) mediaOutputController3.getSelectedMediaDevice()).size() > 1 && MediaOutputBaseAdapter.isDeviceIncluded(mediaOutputController3.getSelectedMediaDevice(), mediaDevice)) {
            boolean isDeviceIncluded = MediaOutputBaseAdapter.isDeviceIncluded(mediaOutputController3.mLocalMediaManager.getDeselectableMediaDevice(), mediaDevice);
            mediaDeviceViewHolder2.updateTitleIcon(R.drawable.media_output_icon_volume, mediaOutputController3.mColorItemContent);
            mediaDeviceViewHolder2.updateGroupableCheckBox(true, isDeviceIncluded, mediaDevice);
            mediaDeviceViewHolder2.updateEndClickArea(mediaDevice, isDeviceIncluded);
            viewGroup2.setFocusable(false);
            viewGroup2.setImportantForAccessibility(2);
            mediaDeviceViewHolder2.setUpContentDescriptionForView(mediaDeviceViewHolder2.mSeekBar, mediaDevice);
            mediaDeviceViewHolder2.setSingleLineLayout(mediaDevice.getName(), true, false, true, true);
            mediaDeviceViewHolder2.initSeekbar(mediaDevice, z2);
            return;
        }
        if (!mediaOutputController3.hasAdjustVolumeUserRestriction() && isCurrentlyConnected) {
            if (z && !mediaOutputController3.isCurrentConnectedDeviceRemote()) {
                mediaDeviceViewHolder2.setUpDeviceIcon(mediaDevice);
                MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda1 mediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda1 = new MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda1(mediaDeviceViewHolder2, 0);
                viewGroup2.setOnClickListener(mediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda1);
                frameLayout.setOnClickListener(mediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda1);
                mediaDeviceViewHolder2.setSingleLineLayout(mediaDevice.getName(), false, false, false, false);
                return;
            }
            if (mediaDevice.hasOngoingSession()) {
                mediaOutputAdapter2.mCurrentActivePosition = i;
                mediaDeviceViewHolder2.updateTitleIcon(R.drawable.media_output_icon_volume, mediaOutputController3.mColorItemContent);
                if (!mediaDevice.isHostForOngoingSession()) {
                    i8 = R.drawable.ic_sound_bars_anim;
                }
                mediaDeviceViewHolder2.updateEndClickAreaAsSessionEditing(mediaDevice, i8);
                mediaDeviceViewHolder2.mEndClickIcon.setVisibility(0);
                mediaDeviceViewHolder2.setSingleLineLayout(mediaDevice.getName(), true, false, false, true);
                mediaDeviceViewHolder2.initSeekbar(mediaDevice, z2);
                return;
            }
            if (mediaOutputController3.isCurrentConnectedDeviceRemote() && !((ArrayList) mediaOutputController3.mLocalMediaManager.getSelectableMediaDevice()).isEmpty()) {
                mediaDeviceViewHolder2.updateTitleIcon(R.drawable.media_output_icon_volume, mediaOutputController3.mColorItemContent);
                boolean isDeviceIncluded2 = MediaOutputBaseAdapter.isDeviceIncluded(mediaOutputController3.mLocalMediaManager.getDeselectableMediaDevice(), mediaDevice);
                mediaDeviceViewHolder2.updateGroupableCheckBox(true, isDeviceIncluded2, mediaDevice);
                mediaDeviceViewHolder2.updateEndClickArea(mediaDevice, isDeviceIncluded2);
                viewGroup2.setFocusable(false);
                viewGroup2.setImportantForAccessibility(2);
                mediaDeviceViewHolder2.setUpContentDescriptionForView(mediaDeviceViewHolder2.mSeekBar, mediaDevice);
                mediaDeviceViewHolder2.setSingleLineLayout(mediaDevice.getName(), true, false, true, true);
                mediaDeviceViewHolder2.initSeekbar(mediaDevice, z2);
                return;
            }
            mediaDeviceViewHolder2.updateTitleIcon(R.drawable.media_output_icon_volume, mediaOutputController3.mColorItemContent);
            viewGroup2.setFocusable(false);
            viewGroup2.setImportantForAccessibility(2);
            mediaDeviceViewHolder2.setUpContentDescriptionForView(mediaDeviceViewHolder2.mSeekBar, mediaDevice);
            mediaOutputAdapter2.mCurrentActivePosition = i;
            mediaDeviceViewHolder2.setSingleLineLayout(mediaDevice.getName(), true, false, false, false);
            mediaDeviceViewHolder2.initSeekbar(mediaDevice, z2);
            return;
        }
        if (MediaOutputBaseAdapter.isDeviceIncluded(mediaOutputController3.mLocalMediaManager.getSelectableMediaDevice(), mediaDevice)) {
            mediaDeviceViewHolder2.setUpDeviceIcon(mediaDevice);
            mediaDeviceViewHolder2.updateGroupableCheckBox(false, true, mediaDevice);
            mediaDeviceViewHolder2.updateEndClickArea(mediaDevice, true);
            MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0 mediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda03 = new MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0(mediaDeviceViewHolder2, mediaDevice, 3);
            viewGroup2.setOnClickListener(mediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda03);
            frameLayout.setOnClickListener(mediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda03);
            mediaDeviceViewHolder2.setSingleLineLayout(mediaDevice.getName(), false, false, true, true);
            return;
        }
        mediaDeviceViewHolder2.setUpDeviceIcon(mediaDevice);
        mediaDeviceViewHolder2.setSingleLineLayout(mediaDevice.getName(), false, false, false, false);
        if (mediaDevice.hasOngoingSession()) {
            drawable = mediaOutputAdapter2.mContext.getDrawable(R.drawable.ic_sound_bars_anim);
        } else {
            Context context2 = mediaOutputAdapter2.mContext;
            int selectionBehavior2 = mediaDevice.getSelectionBehavior();
            if (selectionBehavior2 != 0) {
                if (selectionBehavior2 != 2) {
                    drawable = null;
                } else {
                    drawable = context2.getDrawable(R.drawable.media_output_status_help);
                }
            } else {
                drawable = context2.getDrawable(R.drawable.media_output_status_failed);
            }
        }
        if (drawable != null) {
            imageView2.setImageDrawable(drawable);
            imageView2.setImageTintList(ColorStateList.valueOf(mediaOutputAdapter2.mController.mColorItemContent));
            if (drawable instanceof AnimatedVectorDrawable) {
                ((AnimatedVectorDrawable) drawable).start();
            }
            imageView2.setVisibility(0);
        }
        if (mediaDeviceViewHolder2.updateClickActionBasedOnSelectionBehavior(mediaDevice)) {
            f = 1.0f;
        } else {
            f = 0.5f;
        }
        imageView3.setAlpha(f);
        textView2.setAlpha(f);
        imageView2.setAlpha(f);
    }

    @Override // com.android.systemui.media.dialog.MediaOutputBaseAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(RecyclerView recyclerView, int i) {
        super.onCreateViewHolder(recyclerView, i);
        if (i != 1) {
            return new MediaDeviceViewHolder(this.mHolderView);
        }
        return new MediaGroupDividerViewHolder(this.mHolderView);
    }
}

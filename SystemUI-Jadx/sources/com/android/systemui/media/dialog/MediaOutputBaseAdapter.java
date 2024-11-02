package com.android.systemui.media.dialog;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.Icon;
import android.graphics.drawable.LayerDrawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.graphics.drawable.IconCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.android.settingslib.bluetooth.BluetoothUtils;
import com.android.settingslib.media.MediaDevice;
import com.android.settingslib.utils.ThreadUtils;
import com.android.systemui.R;
import com.android.systemui.media.dialog.MediaOutputBaseAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class MediaOutputBaseAdapter extends RecyclerView.Adapter {
    public Context mContext;
    public final MediaOutputController mController;
    public View mHolderView;
    public boolean mIsDragging = false;
    public int mCurrentActivePosition = -1;
    public boolean mIsInitVolumeFirstTime = true;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class MediaDeviceBaseViewHolder extends RecyclerView.ViewHolder {
        public static final /* synthetic */ int $r8$clinit = 0;
        public final CheckBox mCheckBox;
        public final ViewGroup mContainerLayout;
        public ValueAnimator mCornerAnimator;
        public String mDeviceId;
        public final ImageView mEndClickIcon;
        public final ViewGroup mEndTouchArea;
        public final FrameLayout mIconAreaLayout;
        public final FrameLayout mItemLayout;
        public final ProgressBar mProgressBar;
        MediaOutputSeekbar mSeekBar;
        public final ImageView mStatusIcon;
        public final TextView mSubTitleText;
        public final ImageView mTitleIcon;
        public final TextView mTitleText;
        public final LinearLayout mTwoLineLayout;
        public final TextView mTwoLineTitleText;
        public ValueAnimator mVolumeAnimator;
        public final TextView mVolumeValueText;

        public MediaDeviceBaseViewHolder(View view) {
            super(view);
            this.mContainerLayout = (ViewGroup) view.requireViewById(R.id.device_container);
            this.mItemLayout = (FrameLayout) view.requireViewById(R.id.item_layout);
            this.mTitleText = (TextView) view.requireViewById(R.id.title);
            this.mSubTitleText = (TextView) view.requireViewById(R.id.subtitle);
            this.mTwoLineLayout = (LinearLayout) view.requireViewById(R.id.two_line_layout);
            this.mTwoLineTitleText = (TextView) view.requireViewById(R.id.two_line_title);
            this.mTitleIcon = (ImageView) view.requireViewById(R.id.title_icon);
            this.mProgressBar = (ProgressBar) view.requireViewById(R.id.volume_indeterminate_progress);
            this.mSeekBar = (MediaOutputSeekbar) view.requireViewById(R.id.volume_seekbar);
            this.mStatusIcon = (ImageView) view.requireViewById(R.id.media_output_item_status);
            this.mCheckBox = (CheckBox) view.requireViewById(R.id.check_box);
            this.mEndTouchArea = (ViewGroup) view.requireViewById(R.id.end_action_area);
            this.mEndClickIcon = (ImageView) view.requireViewById(R.id.media_output_item_end_click_icon);
            this.mVolumeValueText = (TextView) view.requireViewById(R.id.volume_value);
            this.mIconAreaLayout = (FrameLayout) view.requireViewById(R.id.icon_area);
            MediaOutputController mediaOutputController = MediaOutputBaseAdapter.this.mController;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(mediaOutputController.mInactiveRadius, mediaOutputController.mActiveRadius);
            this.mCornerAnimator = ofFloat;
            ofFloat.setDuration(500L);
            this.mCornerAnimator.setInterpolator(new LinearInterpolator());
            ValueAnimator ofInt = ValueAnimator.ofInt(new int[0]);
            this.mVolumeAnimator = ofInt;
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.media.dialog.MediaOutputBaseAdapter$MediaDeviceBaseViewHolder$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    MediaOutputBaseAdapter.MediaDeviceBaseViewHolder mediaDeviceBaseViewHolder = MediaOutputBaseAdapter.MediaDeviceBaseViewHolder.this;
                    mediaDeviceBaseViewHolder.getClass();
                    mediaDeviceBaseViewHolder.mSeekBar.setProgress(((Integer) valueAnimator.getAnimatedValue()).intValue());
                }
            });
            this.mVolumeAnimator.setDuration(500L);
            this.mVolumeAnimator.setInterpolator(new LinearInterpolator());
            this.mVolumeAnimator.addListener(new Animator.AnimatorListener() { // from class: com.android.systemui.media.dialog.MediaOutputBaseAdapter.MediaDeviceBaseViewHolder.2
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MediaDeviceBaseViewHolder.this.mSeekBar.setEnabled(true);
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    MediaDeviceBaseViewHolder.this.mSeekBar.setEnabled(true);
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    MediaDeviceBaseViewHolder.this.mSeekBar.setEnabled(false);
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                }
            });
        }

        public final void disableSeekBar() {
            this.mSeekBar.setEnabled(false);
            this.mSeekBar.setOnTouchListener(new MediaOutputBaseAdapter$MediaDeviceBaseViewHolder$$ExternalSyntheticLambda2(0));
            this.mIconAreaLayout.setOnClickListener(null);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0044  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x006a  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0087  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00ec  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0071  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x003f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void initSeekbar(final com.android.settingslib.media.MediaDevice r10, boolean r11) {
            /*
                Method dump skipped, instructions count: 249
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.media.dialog.MediaOutputBaseAdapter.MediaDeviceBaseViewHolder.initSeekbar(com.android.settingslib.media.MediaDevice, boolean):void");
        }

        public final void setSingleLineLayout(CharSequence charSequence, boolean z, boolean z2, boolean z3, boolean z4) {
            boolean z5;
            int i;
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            Drawable mutate;
            int i7 = 8;
            this.mTwoLineLayout.setVisibility(8);
            if (!z && !z2) {
                z5 = false;
            } else {
                z5 = true;
            }
            boolean isRunning = this.mCornerAnimator.isRunning();
            FrameLayout frameLayout = this.mItemLayout;
            MediaOutputBaseAdapter mediaOutputBaseAdapter = MediaOutputBaseAdapter.this;
            if (!isRunning) {
                if (z) {
                    mutate = mediaOutputBaseAdapter.mContext.getDrawable(R.drawable.media_output_item_background_active).mutate();
                } else {
                    mutate = mediaOutputBaseAdapter.mContext.getDrawable(R.drawable.media_output_item_background).mutate();
                }
                frameLayout.setBackground(mutate);
                if (z) {
                    updateSeekbarProgressBackground();
                }
            }
            if (z5) {
                i = mediaOutputBaseAdapter.mController.mColorConnectedItemBackground;
            } else {
                i = mediaOutputBaseAdapter.mController.mColorItemBackground;
            }
            frameLayout.setBackgroundTintList(ColorStateList.valueOf(i));
            if (z) {
                i2 = mediaOutputBaseAdapter.mController.mColorSeekbarProgress;
            } else if (z2) {
                i2 = mediaOutputBaseAdapter.mController.mColorConnectedItemBackground;
            } else {
                i2 = mediaOutputBaseAdapter.mController.mColorItemBackground;
            }
            this.mIconAreaLayout.setBackgroundTintList(ColorStateList.valueOf(i2));
            if (z2) {
                i3 = 0;
            } else {
                i3 = 8;
            }
            this.mProgressBar.setVisibility(i3);
            this.mSeekBar.setAlpha(1.0f);
            MediaOutputSeekbar mediaOutputSeekbar = this.mSeekBar;
            if (z) {
                i4 = 0;
            } else {
                i4 = 8;
            }
            mediaOutputSeekbar.setVisibility(i4);
            if (!z) {
                MediaOutputSeekbar mediaOutputSeekbar2 = this.mSeekBar;
                mediaOutputSeekbar2.setProgress(mediaOutputSeekbar2.getMin());
            }
            TextView textView = this.mTitleText;
            textView.setText(charSequence);
            textView.setVisibility(0);
            if (z3) {
                i5 = 0;
            } else {
                i5 = 8;
            }
            this.mCheckBox.setVisibility(i5);
            if (z4) {
                i7 = 0;
            }
            this.mEndTouchArea.setVisibility(i7);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) frameLayout.getLayoutParams();
            if (z4) {
                i6 = mediaOutputBaseAdapter.mController.mItemMarginEndSelectable;
            } else {
                i6 = mediaOutputBaseAdapter.mController.mItemMarginEndDefault;
            }
            marginLayoutParams.rightMargin = i6;
            this.mTitleIcon.setBackgroundTintList(ColorStateList.valueOf(mediaOutputBaseAdapter.mController.mColorItemContent));
        }

        public final void setTwoLineLayout(MediaDevice mediaDevice, boolean z, boolean z2, boolean z3, boolean z4) {
            int i;
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            int i8;
            int i9;
            this.mTitleText.setVisibility(8);
            this.mTwoLineLayout.setVisibility(0);
            if (z3) {
                i = 0;
            } else {
                i = 8;
            }
            this.mStatusIcon.setVisibility(i);
            this.mSeekBar.setAlpha(1.0f);
            MediaOutputSeekbar mediaOutputSeekbar = this.mSeekBar;
            if (z2) {
                i2 = 0;
            } else {
                i2 = 8;
            }
            mediaOutputSeekbar.setVisibility(i2);
            MediaOutputBaseAdapter mediaOutputBaseAdapter = MediaOutputBaseAdapter.this;
            Context context = mediaOutputBaseAdapter.mContext;
            if (!z2) {
                i3 = R.drawable.media_output_item_background;
            } else {
                i3 = R.drawable.media_output_item_background_active;
            }
            Drawable mutate = context.getDrawable(i3).mutate();
            MediaOutputController mediaOutputController = mediaOutputBaseAdapter.mController;
            if (!z2) {
                i4 = mediaOutputController.mColorItemBackground;
            } else {
                i4 = mediaOutputController.mColorConnectedItemBackground;
            }
            ColorStateList valueOf = ColorStateList.valueOf(i4);
            FrameLayout frameLayout = this.mItemLayout;
            frameLayout.setBackgroundTintList(valueOf);
            if (z2) {
                i5 = mediaOutputController.mColorSeekbarProgress;
            } else {
                i5 = mediaOutputController.mColorItemBackground;
            }
            this.mIconAreaLayout.setBackgroundTintList(ColorStateList.valueOf(i5));
            if (z2) {
                updateSeekbarProgressBackground();
            }
            if (z4) {
                i6 = 0;
            } else {
                i6 = 8;
            }
            this.mEndTouchArea.setVisibility(i6);
            if (z4) {
                i7 = 0;
            } else {
                i7 = 8;
            }
            this.mEndClickIcon.setVisibility(i7);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) frameLayout.getLayoutParams();
            if (z4) {
                i8 = mediaOutputController.mItemMarginEndSelectable;
            } else {
                i8 = mediaOutputController.mItemMarginEndDefault;
            }
            marginLayoutParams.rightMargin = i8;
            frameLayout.setBackground(mutate);
            this.mProgressBar.setVisibility(8);
            this.mSubTitleText.setVisibility(0);
            TextView textView = this.mTwoLineTitleText;
            textView.setTranslationY(0.0f);
            textView.setText(mediaDevice.getName());
            Context context2 = mediaOutputBaseAdapter.mContext;
            if (z) {
                i9 = android.R.string.fingerprint_authenticated;
            } else {
                i9 = android.R.string.fingerprint_acquired_too_slow;
            }
            textView.setTypeface(Typeface.create(context2.getString(i9), 0));
        }

        public final void setUpDeviceIcon(final MediaDevice mediaDevice) {
            ThreadUtils.postOnBackgroundThread(new Runnable() { // from class: com.android.systemui.media.dialog.MediaOutputBaseAdapter$MediaDeviceBaseViewHolder$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    Bitmap createBitmap;
                    final MediaOutputBaseAdapter.MediaDeviceBaseViewHolder mediaDeviceBaseViewHolder = MediaOutputBaseAdapter.MediaDeviceBaseViewHolder.this;
                    final MediaDevice mediaDevice2 = mediaDevice;
                    MediaOutputController mediaOutputController = MediaOutputBaseAdapter.this.mController;
                    mediaOutputController.getClass();
                    Drawable icon = mediaDevice2.getIcon();
                    if (icon == null) {
                        if (MediaOutputController.DEBUG) {
                            Log.d("MediaOutputController", "getDeviceIconCompat() device : " + mediaDevice2.getName() + ", drawable is null");
                        }
                        icon = mediaOutputController.mContext.getDrawable(android.R.drawable.ic_corp_icon_badge_color);
                    }
                    boolean z = icon instanceof BitmapDrawable;
                    int i = 1;
                    if (!z) {
                        boolean equals = mediaOutputController.mLocalMediaManager.getCurrentConnectedDevice().getId().equals(mediaDevice2.getId());
                        if (((ArrayList) mediaOutputController.getSelectedMediaDevice()).size() > 1) {
                            ((ArrayList) mediaOutputController.getSelectedMediaDevice()).contains(mediaDevice2);
                        }
                        if (!mediaOutputController.hasAdjustVolumeUserRestriction() && equals) {
                            mediaOutputController.isAnyDeviceTransferring();
                        }
                        icon.setColorFilter(new PorterDuffColorFilter(mediaOutputController.mColorItemContent, PorterDuff.Mode.SRC_IN));
                    }
                    boolean z2 = BluetoothUtils.DEBUG;
                    if (z) {
                        createBitmap = ((BitmapDrawable) icon).getBitmap();
                    } else {
                        int intrinsicWidth = icon.getIntrinsicWidth();
                        int intrinsicHeight = icon.getIntrinsicHeight();
                        if (intrinsicWidth <= 0) {
                            intrinsicWidth = 1;
                        }
                        if (intrinsicHeight > 0) {
                            i = intrinsicHeight;
                        }
                        createBitmap = Bitmap.createBitmap(intrinsicWidth, i, Bitmap.Config.ARGB_8888);
                        Canvas canvas = new Canvas(createBitmap);
                        icon.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                        icon.draw(canvas);
                    }
                    final Icon icon$1 = IconCompat.createWithBitmap(createBitmap).toIcon$1();
                    ThreadUtils.postOnMainThread(new Runnable() { // from class: com.android.systemui.media.dialog.MediaOutputBaseAdapter$MediaDeviceBaseViewHolder$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            MediaOutputBaseAdapter.MediaDeviceBaseViewHolder mediaDeviceBaseViewHolder2 = MediaOutputBaseAdapter.MediaDeviceBaseViewHolder.this;
                            MediaDevice mediaDevice3 = mediaDevice2;
                            Icon icon2 = icon$1;
                            if (TextUtils.equals(mediaDeviceBaseViewHolder2.mDeviceId, mediaDevice3.getId())) {
                                ImageView imageView = mediaDeviceBaseViewHolder2.mTitleIcon;
                                imageView.setImageIcon(icon2);
                                imageView.setImageTintList(ColorStateList.valueOf(MediaOutputBaseAdapter.this.mController.mColorItemContent));
                            }
                        }
                    });
                }
            });
        }

        public final void updateMutedVolumeIcon() {
            MediaOutputBaseAdapter mediaOutputBaseAdapter = MediaOutputBaseAdapter.this;
            this.mIconAreaLayout.setBackground(mediaOutputBaseAdapter.mContext.getDrawable(R.drawable.media_output_item_background_active));
            updateTitleIcon(R.drawable.media_output_icon_volume_off, mediaOutputBaseAdapter.mController.mColorItemContent);
        }

        public final void updateSeekbarProgressBackground() {
            GradientDrawable gradientDrawable = (GradientDrawable) ((ClipDrawable) ((LayerDrawable) this.mSeekBar.getProgressDrawable()).findDrawableByLayerId(android.R.id.progress)).getDrawable();
            float f = MediaOutputBaseAdapter.this.mController.mActiveRadius;
            gradientDrawable.setCornerRadii(new float[]{0.0f, 0.0f, f, f, f, f, 0.0f, 0.0f});
        }

        public final void updateTitleIcon(int i, int i2) {
            MediaOutputBaseAdapter mediaOutputBaseAdapter = MediaOutputBaseAdapter.this;
            Drawable drawable = mediaOutputBaseAdapter.mContext.getDrawable(i);
            ImageView imageView = this.mTitleIcon;
            imageView.setImageDrawable(drawable);
            imageView.setImageTintList(ColorStateList.valueOf(i2));
            this.mIconAreaLayout.setBackgroundTintList(ColorStateList.valueOf(mediaOutputBaseAdapter.mController.mColorSeekbarProgress));
        }

        public final void updateUnmutedVolumeIcon() {
            MediaOutputBaseAdapter mediaOutputBaseAdapter = MediaOutputBaseAdapter.this;
            this.mIconAreaLayout.setBackground(mediaOutputBaseAdapter.mContext.getDrawable(R.drawable.media_output_title_icon_area));
            updateTitleIcon(R.drawable.media_output_icon_volume, mediaOutputBaseAdapter.mController.mColorItemContent);
        }
    }

    public MediaOutputBaseAdapter(MediaOutputController mediaOutputController) {
        this.mController = mediaOutputController;
    }

    public static boolean isDeviceIncluded(List list, MediaDevice mediaDevice) {
        Iterator it = ((ArrayList) list).iterator();
        while (it.hasNext()) {
            if (TextUtils.equals(((MediaDevice) it.next()).getId(), mediaDevice.getId())) {
                return true;
            }
        }
        return false;
    }

    public final boolean isCurrentlyConnected(MediaDevice mediaDevice) {
        String id = mediaDevice.getId();
        MediaOutputController mediaOutputController = this.mController;
        if (TextUtils.equals(id, mediaOutputController.getCurrentConnectedMediaDevice().getId())) {
            return true;
        }
        if (((ArrayList) mediaOutputController.getSelectedMediaDevice()).size() == 1 && isDeviceIncluded(mediaOutputController.getSelectedMediaDevice(), mediaDevice)) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(RecyclerView recyclerView, int i) {
        int i2;
        Context context = recyclerView.getContext();
        this.mContext = context;
        LayoutInflater from = LayoutInflater.from(context);
        if (i != 0 && i != 2) {
            i2 = R.layout.media_output_list_group_divider;
        } else {
            i2 = R.layout.media_output_list_item_advanced;
        }
        this.mHolderView = from.inflate(i2, (ViewGroup) recyclerView, false);
        return null;
    }
}

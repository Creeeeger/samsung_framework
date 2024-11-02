package com.android.systemui.volume.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Toast;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.android.settingslib.bluetooth.BluetoothUtils;
import com.android.settingslib.bluetooth.LocalBluetoothManager;
import com.android.systemui.BasicRune;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.volume.store.StoreInteractor;
import com.android.systemui.volume.store.VolumePanelStore;
import com.android.systemui.volume.util.ColorUtils;
import com.android.systemui.volume.util.ContextUtils;
import com.android.systemui.volume.util.HandlerWrapper;
import com.android.systemui.volume.util.ViewUtil;
import com.android.systemui.volume.util.ViewVisibilityUtil;
import com.android.systemui.volume.view.icon.VolumeIcon;
import com.samsung.systemui.splugins.extensions.VolumePanelStateExt;
import com.samsung.systemui.splugins.volume.VolumeObserver;
import com.samsung.systemui.splugins.volume.VolumePanelAction;
import com.samsung.systemui.splugins.volume.VolumePanelRow;
import com.samsung.systemui.splugins.volume.VolumePanelState;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import kotlin.Result;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class VolumeRowView extends FrameLayout implements VolumeObserver<VolumePanelState> {
    public ImageView bluetoothDeviceIcon;
    public int earProtectLevel;
    public HandlerWrapper handlerWrapper;
    public VolumeIcon icon;
    public boolean isAODEnabled;
    public boolean isDualViewEnabled;
    public boolean isIconClickable;
    public String label;
    public final SpringAnimation progressBarSpring;
    public final VolumeRowView$recheckCallback$1 recheckCallback;
    public VolumeSeekBar seekBar;
    public ViewGroup seekBarBackground;
    public int springFinalPosition;
    public boolean startProgress;
    public final StoreInteractor storeInteractor;
    public int stream;
    public SpringAnimation touchDownAnimation;
    public boolean touchDownIcon;
    public SpringAnimation touchUpAnimation;
    public VolumePanelMotion volumePanelMotion;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[VolumePanelState.StateType.values().length];
            try {
                iArr[VolumePanelState.StateType.STATE_UPDATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_SET_STREAM_VOLUME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_UPDATE_PROGRESS_BAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_UPDATE_PROGRESS_BAR_LATER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_STOP_SLIDER_TRACKING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_DISMISS_VOLUME_PANEL_COMPLETED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_SEEKBAR_START_PROGRESS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_SEEKBAR_TOUCH_DOWN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_SEEKBAR_TOUCH_UP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_SMART_VIEW_SEEKBAR_TOUCHED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [com.android.systemui.volume.view.VolumeRowView$recheckCallback$1] */
    public VolumeRowView(Context context) {
        super(context);
        this.storeInteractor = new StoreInteractor(this, null);
        this.progressBarSpring = new SpringAnimation(new FloatValueHolder());
        this.recheckCallback = new Runnable() { // from class: com.android.systemui.volume.view.VolumeRowView$recheckCallback$1
            @Override // java.lang.Runnable
            public final void run() {
                StoreInteractor storeInteractor = VolumeRowView.this.storeInteractor;
                VolumePanelAction.Builder stream = new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_CHECK_IF_NEED_TO_SET_PROGRESS).stream(VolumeRowView.this.stream);
                VolumeSeekBar volumeSeekBar = VolumeRowView.this.seekBar;
                if (volumeSeekBar == null) {
                    volumeSeekBar = null;
                }
                storeInteractor.sendAction(stream.progress(volumeSeekBar.getProgress()).build(), false);
            }
        };
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                if (isIconClicked(motionEvent.getRawX(), motionEvent.getRawY())) {
                    this.storeInteractor.sendAction(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_VOLUME_ICON_CLICKED).stream(this.stream).isFromOutside(true).build(), false);
                }
                this.touchDownIcon = false;
                this.startProgress = false;
            }
        } else {
            ViewUtil viewUtil = ViewUtil.INSTANCE;
            VolumeIcon volumeIcon = this.icon;
            ViewGroup viewGroup = null;
            if (volumeIcon == null) {
                volumeIcon = null;
            }
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            viewUtil.getClass();
            if (ViewUtil.isTouched(volumeIcon, rawX, rawY)) {
                this.touchDownIcon = true;
                ViewGroup viewGroup2 = this.seekBarBackground;
                if (viewGroup2 != null) {
                    viewGroup = viewGroup2;
                }
                if (!ViewUtil.isTouched(viewGroup, motionEvent.getRawX(), motionEvent.getRawY())) {
                    return true;
                }
            } else if (VolumePanelValues.isSmartView(this.stream)) {
                this.storeInteractor.sendAction(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_SMART_VIEW_SEEKBAR_TOUCHED).isFromOutside(true).stream(this.stream).build(), false);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final void initialize(VolumePanelStore volumePanelStore, HandlerWrapper handlerWrapper, VolumePanelRow volumePanelRow, VolumePanelState volumePanelState, VolumePanelMotion volumePanelMotion) {
        Object failure;
        String str;
        int i;
        int i2;
        int i3;
        VolumeIcon volumeIcon;
        StoreInteractor storeInteractor = this.storeInteractor;
        storeInteractor.store = volumePanelStore;
        storeInteractor.observeStore();
        this.handlerWrapper = handlerWrapper;
        this.stream = volumePanelRow.getStreamType();
        this.volumePanelMotion = volumePanelMotion;
        VolumeSeekBar volumeSeekBar = (VolumeSeekBar) findViewById(R.id.volume_seekbar);
        this.seekBar = volumeSeekBar;
        volumeSeekBar.stream = this.stream;
        volumeSeekBar.isTracking = false;
        StoreInteractor storeInteractor2 = volumeSeekBar.storeInteractor;
        storeInteractor2.store = volumePanelStore;
        storeInteractor2.observeStore();
        VolumeIcon volumeIcon2 = (VolumeIcon) findViewById(R.id.volume_button);
        this.icon = volumeIcon2;
        volumeIcon2.initialize(volumePanelStore, volumePanelState, volumePanelRow);
        this.seekBarBackground = (ViewGroup) findViewById(R.id.volume_seekbar_background);
        this.isDualViewEnabled = VolumePanelStateExt.isDualViewEnabled(volumePanelState);
        this.isAODEnabled = volumePanelState.isAodVolumePanel();
        int viewMinLevel = ViewLevelConverter.viewMinLevel(volumePanelRow);
        int viewMaxLevel = ViewLevelConverter.viewMaxLevel(volumePanelRow);
        VolumeSeekBar volumeSeekBar2 = this.seekBar;
        VolumeSeekBar volumeSeekBar3 = null;
        if (volumeSeekBar2 == null) {
            volumeSeekBar2 = null;
        }
        volumeSeekBar2.semSetMin(viewMinLevel);
        VolumeSeekBar volumeSeekBar4 = this.seekBar;
        if (volumeSeekBar4 == null) {
            volumeSeekBar4 = null;
        }
        volumeSeekBar4.setMax(viewMaxLevel);
        VolumeSeekBar volumeSeekBar5 = this.seekBar;
        if (volumeSeekBar5 == null) {
            volumeSeekBar5 = null;
        }
        boolean z = true;
        volumeSeekBar5.setProgress(ViewLevelConverter.viewRealLevel(volumePanelRow), true);
        boolean isSliderEnabled = volumePanelRow.isSliderEnabled();
        VolumeSeekBar volumeSeekBar6 = this.seekBar;
        if (volumeSeekBar6 == null) {
            volumeSeekBar6 = null;
        }
        volumeSeekBar6.setEnabled(isSliderEnabled);
        this.isIconClickable = volumePanelRow.isIconClickable();
        if (VolumePanelValues.isSmartView(volumePanelRow.getStreamType()) && !TextUtils.isEmpty(volumePanelRow.getSmartViewLabel())) {
            str = volumePanelRow.getSmartViewLabel();
        } else if (volumePanelRow.isDynamic()) {
            str = volumePanelRow.getRemoteLabel();
        } else {
            try {
                int i4 = Result.$r8$clinit;
                failure = getContext().getString(getContext().getResources().getIdentifier(volumePanelRow.getNameRes(), null, null));
            } catch (Throwable th) {
                int i5 = Result.$r8$clinit;
                failure = new Result.Failure(th);
            }
            if (failure instanceof Result.Failure) {
                failure = "";
            }
            str = (String) failure;
            if (volumePanelState.isRemoteMic()) {
                if (VolumePanelValues.isBluetoothSco(volumePanelRow.getStreamType())) {
                    str = getContext().getString(R.string.volume_amplify_ambient_sound_title);
                } else if (VolumePanelValues.isMusic(volumePanelRow.getStreamType()) && !volumePanelState.isBtScoOn()) {
                    str = getContext().getString(R.string.volume_amplify_ambient_sound_title);
                }
            }
            int streamType = volumePanelRow.getStreamType();
            String remoteLabel = volumePanelRow.getRemoteLabel();
            if (!TextUtils.isEmpty(remoteLabel) && (VolumePanelValues.isMusic(streamType) || VolumePanelValues.isDualAudio(streamType) || VolumePanelValues.isBluetoothSco(streamType) || VolumePanelValues.isMultiSound(streamType) || VolumePanelValues.isAudioSharing(streamType) || VolumePanelValues.isVoiceCall(streamType))) {
                str = str + " (" + remoteLabel + ")";
            }
        }
        this.label = str;
        if (volumePanelState.isShowA11yStream()) {
            if (VolumePanelValues.isAccessibility(this.stream)) {
                VolumeIcon volumeIcon3 = this.icon;
                if (volumeIcon3 == null) {
                    volumeIcon3 = null;
                }
                volumeIcon3.setImportantForAccessibility(2);
            } else {
                VolumeIcon volumeIcon4 = this.icon;
                if (volumeIcon4 == null) {
                    volumeIcon4 = null;
                }
                volumeIcon4.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.volume.view.VolumeRowView$initialize$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        VolumeRowView.this.storeInteractor.sendAction(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_VOLUME_ICON_CLICKED).stream(VolumeRowView.this.stream).isFromOutside(true).build(), false);
                    }
                });
                updateContentDescription(volumePanelState, volumePanelRow);
                VolumeIcon volumeIcon5 = this.icon;
                if (volumeIcon5 == null) {
                    volumeIcon = null;
                } else {
                    volumeIcon = volumeIcon5;
                }
                if (volumeIcon5 == null) {
                    volumeIcon5 = null;
                }
                if (!volumeIcon5.isEnabled() || !this.isIconClickable) {
                    z = false;
                }
                volumeIcon.setClickable(z);
            }
            VolumeSeekBar volumeSeekBar7 = this.seekBar;
            if (volumeSeekBar7 == null) {
                volumeSeekBar7 = null;
            }
            volumeSeekBar7.setContentDescription(this.label);
        }
        ImageView imageView = (ImageView) findViewById(R.id.volume_panel_bluetooth_device_icon);
        this.bluetoothDeviceIcon = imageView;
        imageView.setImageTintList(ColorUtils.getSingleColorStateList(R.color.volume_panel_bluetooth_device_icon_color, getContext()));
        updateBluetoothDeviceIcon(volumePanelRow);
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.volume_seekbar_container);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) ((ViewGroup) findViewById(R.id.volume_icon_area)).getLayoutParams();
        if (!volumePanelState.isExpanded() && !this.isDualViewEnabled) {
            boolean isAllSoundOff = volumePanelState.isAllSoundOff();
            boolean isZenMode = volumePanelState.isZenMode();
            boolean isLeBroadcasting = volumePanelState.isLeBroadcasting();
            ImageView imageView2 = (ImageView) findViewById(R.id.volume_panel_status_icon);
            Resources resources = getContext().getResources();
            if (!isAllSoundOff && !isZenMode) {
                i2 = R.drawable.ic_auracast;
            } else {
                i2 = R.drawable.ic_volume_control_dnd;
            }
            imageView2.setImageDrawable(resources.getDrawable(i2, null));
            imageView2.setImageTintList(ColorUtils.getSingleColorStateList(R.color.volume_panel_status_message_color, getContext()));
            if (!isAllSoundOff && !isZenMode && !isLeBroadcasting) {
                ViewVisibilityUtil.INSTANCE.getClass();
                imageView2.setVisibility(8);
            } else {
                ViewVisibilityUtil.INSTANCE.getClass();
                imageView2.setVisibility(0);
            }
            if (((SettingsHelper) Dependency.get(SettingsHelper.class)).isReduceTransparencyEnabled()) {
                VolumeSeekBar volumeSeekBar8 = this.seekBar;
                if (volumeSeekBar8 == null) {
                    volumeSeekBar8 = null;
                }
                volumeSeekBar8.setProgressDrawable(getContext().getResources().getDrawable(R.drawable.volume_seekbar_drawable_reduce_transparency, null));
            } else if (!BasicRune.VOLUME_PARTIAL_BLUR && !BasicRune.VOLUME_CAPTURED_BLUR) {
                VolumeSeekBar volumeSeekBar9 = this.seekBar;
                if (volumeSeekBar9 == null) {
                    volumeSeekBar9 = null;
                }
                volumeSeekBar9.setProgressDrawable(getContext().getResources().getDrawable(R.drawable.volume_seekbar_drawable, null));
            } else {
                VolumeSeekBar volumeSeekBar10 = this.seekBar;
                if (volumeSeekBar10 == null) {
                    volumeSeekBar10 = null;
                }
                volumeSeekBar10.setProgressDrawable(getContext().getResources().getDrawable(R.drawable.volume_seekbar_drawable_blur, null));
            }
            if (((SettingsHelper) Dependency.get(SettingsHelper.class)).isReduceTransparencyEnabled()) {
                i3 = R.drawable.volume_seekbar_bg_reduce_transparency;
            } else if (!BasicRune.VOLUME_PARTIAL_BLUR && !BasicRune.VOLUME_CAPTURED_BLUR) {
                i3 = R.drawable.volume_seekbar_bg;
            } else {
                i3 = R.drawable.volume_seekbar_bg_blur;
            }
            ViewGroup viewGroup2 = this.seekBarBackground;
            if (viewGroup2 == null) {
                viewGroup2 = null;
            }
            viewGroup2.setBackground(getContext().getDrawable(i3));
            ViewGroup viewGroup3 = this.seekBarBackground;
            if (viewGroup3 == null) {
                viewGroup3 = null;
            }
            viewGroup3.setElevation(ContextUtils.getDimenFloat(R.dimen.volume_seekbar_elevation, getContext()));
            int dimenInt = ContextUtils.getDimenInt(R.dimen.volume_seekbar_elevation_padding, getContext());
            int dimenInt2 = ContextUtils.getDimenInt(R.dimen.volume_seekbar_elevation_padding_bottom, getContext());
            viewGroup.setPadding(dimenInt, dimenInt, dimenInt, dimenInt2);
            viewGroup.setClipChildren(false);
            marginLayoutParams.bottomMargin = dimenInt2;
            int dimenInt3 = ContextUtils.getDimenInt(R.dimen.volume_icon_touch_padding, getContext());
            VolumeIcon volumeIcon6 = this.icon;
            if (volumeIcon6 == null) {
                volumeIcon6 = null;
            }
            volumeIcon6.setPadding(dimenInt3, dimenInt3, dimenInt3, dimenInt3);
        } else {
            marginLayoutParams.bottomMargin = ContextUtils.getDimenInt(R.dimen.volume_panel_icon_margin_bottom_expanded, getContext());
            viewGroup.setPadding(0, 0, 0, ContextUtils.getDimenInt(R.dimen.volume_expand_panel_horizontal_padding_min, getContext()));
            marginLayoutParams.bottomMargin = 0;
            int dimenInt4 = ContextUtils.getDimenInt(R.dimen.volume_panel_icon_margin_touch_expanded, getContext());
            int dimenInt5 = ContextUtils.getDimenInt(R.dimen.volume_panel_icon_margin_bottom_expanded, getContext());
            VolumeIcon volumeIcon7 = this.icon;
            if (volumeIcon7 == null) {
                volumeIcon7 = null;
            }
            volumeIcon7.getLayoutParams().height = ContextUtils.getDimenInt(R.dimen.volume_icon_touch_height, getContext());
            VolumeIcon volumeIcon8 = this.icon;
            if (volumeIcon8 == null) {
                volumeIcon8 = null;
            }
            volumeIcon8.getLayoutParams().width = ContextUtils.getDimenInt(R.dimen.volume_icon_touch_width, getContext());
            VolumeIcon volumeIcon9 = this.icon;
            if (volumeIcon9 == null) {
                volumeIcon9 = null;
            }
            volumeIcon9.setPadding(dimenInt4, dimenInt5, dimenInt4, dimenInt4);
            VolumeSeekBar volumeSeekBar11 = this.seekBar;
            if (volumeSeekBar11 == null) {
                volumeSeekBar11 = null;
            }
            Resources resources2 = getContext().getResources();
            if (((SettingsHelper) Dependency.get(SettingsHelper.class)).isReduceTransparencyEnabled()) {
                i = R.drawable.volume_seekbar_drawable_expand_reduce_transparency;
            } else if (!BasicRune.VOLUME_PARTIAL_BLUR && !BasicRune.VOLUME_CAPTURED_BLUR) {
                i = R.drawable.volume_seekbar_drawable_expand;
            } else {
                i = R.drawable.volume_seekbar_drawable_expand_blur;
            }
            volumeSeekBar11.setProgressDrawable(resources2.getDrawable(i, null));
            ViewGroup viewGroup4 = this.seekBarBackground;
            if (viewGroup4 == null) {
                viewGroup4 = null;
            }
            viewGroup4.setBackground(null);
            ViewGroup viewGroup5 = this.seekBarBackground;
            if (viewGroup5 == null) {
                viewGroup5 = null;
            }
            viewGroup5.setElevation(0.0f);
            viewGroup.setOnTouchListener(null);
        }
        VolumePanelMotion volumePanelMotion2 = this.volumePanelMotion;
        if (volumePanelMotion2 == null) {
            volumePanelMotion2 = null;
        }
        volumePanelMotion2.getClass();
        this.touchDownAnimation = VolumePanelMotion.getSeekBarTouchDownAnimation(this);
        VolumePanelMotion volumePanelMotion3 = this.volumePanelMotion;
        if (volumePanelMotion3 == null) {
            volumePanelMotion3 = null;
        }
        volumePanelMotion3.getClass();
        this.touchUpAnimation = VolumePanelMotion.getSeekBarTouchUpAnimation(this);
        SpringAnimation springAnimation = this.progressBarSpring;
        SpringForce springForce = new SpringForce();
        springForce.setDampingRatio(1.0f);
        springForce.setStiffness(450.0f);
        springAnimation.mSpring = springForce;
        SpringAnimation springAnimation2 = this.progressBarSpring;
        springAnimation2.mVelocity = 0.0f;
        VolumeSeekBar volumeSeekBar12 = this.seekBar;
        if (volumeSeekBar12 != null) {
            volumeSeekBar3 = volumeSeekBar12;
        }
        springAnimation2.setStartValue(volumeSeekBar3.getProgress());
        this.progressBarSpring.setMinimumVisibleChange(1.0f);
        this.progressBarSpring.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: com.android.systemui.volume.view.VolumeRowView$initialize$3
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(float f, float f2) {
                VolumeSeekBar volumeSeekBar13 = VolumeRowView.this.seekBar;
                if (volumeSeekBar13 == null) {
                    volumeSeekBar13 = null;
                }
                volumeSeekBar13.setProgress((int) f);
            }
        });
    }

    public final boolean isIconClicked(float f, float f2) {
        if (!this.startProgress && this.touchDownIcon) {
            VolumeIcon volumeIcon = this.icon;
            VolumeIcon volumeIcon2 = null;
            if (volumeIcon == null) {
                volumeIcon = null;
            }
            if (volumeIcon.isEnabled() && this.isIconClickable) {
                ViewUtil viewUtil = ViewUtil.INSTANCE;
                VolumeIcon volumeIcon3 = this.icon;
                if (volumeIcon3 != null) {
                    volumeIcon2 = volumeIcon3;
                }
                viewUtil.getClass();
                if (ViewUtil.isTouched(volumeIcon2, f, f2)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.samsung.systemui.splugins.volume.VolumeObserver
    public final void onChanged(VolumePanelState volumePanelState) {
        int earProtectLevel;
        String str;
        VolumePanelState volumePanelState2 = volumePanelState;
        boolean z = false;
        VolumeSeekBar volumeSeekBar = null;
        SpringAnimation springAnimation = null;
        SpringAnimation springAnimation2 = null;
        VolumeSeekBar volumeSeekBar2 = null;
        HandlerWrapper handlerWrapper = null;
        HandlerWrapper handlerWrapper2 = null;
        switch (WhenMappings.$EnumSwitchMapping$0[volumePanelState2.getStateType().ordinal()]) {
            case 1:
                VolumePanelStateExt volumePanelStateExt = VolumePanelStateExt.INSTANCE;
                if (volumePanelStateExt.isRowVisible(volumePanelState2, this.stream)) {
                    VolumePanelRow findRow = volumePanelStateExt.findRow(volumePanelState2, this.stream);
                    if (findRow != null && (earProtectLevel = findRow.getEarProtectLevel()) != this.earProtectLevel) {
                        this.earProtectLevel = earProtectLevel;
                        VolumeSeekBar volumeSeekBar3 = this.seekBar;
                        if (volumeSeekBar3 == null) {
                            volumeSeekBar3 = null;
                        }
                        volumeSeekBar3.getClass();
                    }
                    VolumePanelRow findRow2 = volumePanelStateExt.findRow(volumePanelState2, this.stream);
                    if (findRow2 != null) {
                        VolumeSeekBar volumeSeekBar4 = this.seekBar;
                        if (volumeSeekBar4 == null) {
                            volumeSeekBar4 = null;
                        }
                        volumeSeekBar4.setEnabled(findRow2.isSliderEnabled());
                    }
                    VolumePanelRow findRow3 = volumePanelStateExt.findRow(volumePanelState2, this.stream);
                    if (findRow3 != null) {
                        updateContentDescription(volumePanelState2, findRow3);
                    }
                    VolumePanelRow findRow4 = volumePanelStateExt.findRow(volumePanelState2, this.stream);
                    if (findRow4 != null) {
                        updateBluetoothDeviceIcon(findRow4);
                    }
                    StoreInteractor storeInteractor = this.storeInteractor;
                    VolumePanelAction.Builder stream = new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_CHECK_IF_NEED_TO_SET_PROGRESS).stream(this.stream);
                    VolumeSeekBar volumeSeekBar5 = this.seekBar;
                    if (volumeSeekBar5 != null) {
                        volumeSeekBar = volumeSeekBar5;
                    }
                    storeInteractor.sendAction(stream.progress(volumeSeekBar.getProgress()).build(), true);
                    return;
                }
                return;
            case 2:
                if (this.isAODEnabled && this.stream == volumePanelState2.getStream()) {
                    updateProgress(volumePanelState2);
                    return;
                }
                return;
            case 3:
                if (this.stream == volumePanelState2.getStream()) {
                    updateProgress(volumePanelState2);
                    return;
                }
                return;
            case 4:
                if (this.stream == volumePanelState2.getStream()) {
                    HandlerWrapper handlerWrapper3 = this.handlerWrapper;
                    if (handlerWrapper3 == null) {
                        handlerWrapper3 = null;
                    }
                    handlerWrapper3.remove(this.recheckCallback);
                    HandlerWrapper handlerWrapper4 = this.handlerWrapper;
                    if (handlerWrapper4 != null) {
                        handlerWrapper2 = handlerWrapper4;
                    }
                    handlerWrapper2.postDelayed(1000L, this.recheckCallback);
                    return;
                }
                return;
            case 5:
                if (this.stream == volumePanelState2.getStream()) {
                    VolumeSeekBar volumeSeekBar6 = this.seekBar;
                    if (volumeSeekBar6 == null) {
                        volumeSeekBar6 = null;
                    }
                    int progress = volumeSeekBar6.getProgress();
                    if (this.progressBarSpring.mRunning) {
                        progress = this.springFinalPosition;
                    }
                    this.storeInteractor.sendAction(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_UPDATE_PROGRESS_BAR).stream(this.stream).progress(progress).build(), true);
                    HandlerWrapper handlerWrapper5 = this.handlerWrapper;
                    if (handlerWrapper5 == null) {
                        handlerWrapper5 = null;
                    }
                    handlerWrapper5.remove(this.recheckCallback);
                    HandlerWrapper handlerWrapper6 = this.handlerWrapper;
                    if (handlerWrapper6 != null) {
                        handlerWrapper = handlerWrapper6;
                    }
                    handlerWrapper.postDelayed(1000L, this.recheckCallback);
                    return;
                }
                return;
            case 6:
                this.storeInteractor.dispose();
                VolumeSeekBar volumeSeekBar7 = this.seekBar;
                if (volumeSeekBar7 != null) {
                    volumeSeekBar2 = volumeSeekBar7;
                }
                volumeSeekBar2.storeInteractor.dispose();
                return;
            case 7:
                if (volumePanelState2.getStream() == this.stream) {
                    this.startProgress = true;
                    return;
                }
                return;
            case 8:
                if ((this.isAODEnabled || this.isDualViewEnabled || volumePanelState2.isExpanded()) && volumePanelState2.getStream() == this.stream) {
                    z = true;
                }
                if (z) {
                    VolumePanelMotion volumePanelMotion = this.volumePanelMotion;
                    if (volumePanelMotion == null) {
                        volumePanelMotion = null;
                    }
                    SpringAnimation springAnimation3 = this.touchDownAnimation;
                    if (springAnimation3 == null) {
                        springAnimation3 = null;
                    }
                    SpringAnimation springAnimation4 = this.touchUpAnimation;
                    if (springAnimation4 != null) {
                        springAnimation2 = springAnimation4;
                    }
                    volumePanelMotion.getClass();
                    if (springAnimation2 != null && springAnimation2.mRunning && springAnimation2.canSkipToEnd()) {
                        springAnimation2.skipToEnd();
                    }
                    springAnimation3.animateToFinalPosition(1.05f);
                    return;
                }
                return;
            case 9:
                if ((this.isAODEnabled || this.isDualViewEnabled || volumePanelState2.isExpanded()) && volumePanelState2.getStream() == this.stream) {
                    z = true;
                }
                if (z) {
                    VolumePanelMotion volumePanelMotion2 = this.volumePanelMotion;
                    if (volumePanelMotion2 == null) {
                        volumePanelMotion2 = null;
                    }
                    SpringAnimation springAnimation5 = this.touchUpAnimation;
                    if (springAnimation5 == null) {
                        springAnimation5 = null;
                    }
                    SpringAnimation springAnimation6 = this.touchDownAnimation;
                    if (springAnimation6 != null) {
                        springAnimation = springAnimation6;
                    }
                    volumePanelMotion2.getClass();
                    VolumePanelMotion.startSeekBarTouchUpAnimation(springAnimation5, springAnimation);
                    return;
                }
                return;
            case 10:
                if (this.stream == volumePanelState2.getStream()) {
                    VolumeSeekBar volumeSeekBar8 = this.seekBar;
                    if (volumeSeekBar8 == null) {
                        volumeSeekBar8 = null;
                    }
                    volumeSeekBar8.setFocusable(false);
                    VolumeSeekBar volumeSeekBar9 = this.seekBar;
                    if (volumeSeekBar9 == null) {
                        volumeSeekBar9 = null;
                    }
                    volumeSeekBar9.setFocusableInTouchMode(false);
                    VolumeSeekBar volumeSeekBar10 = this.seekBar;
                    if (volumeSeekBar10 == null) {
                        volumeSeekBar10 = null;
                    }
                    volumeSeekBar10.clearFocus();
                    VolumeSeekBar volumeSeekBar11 = this.seekBar;
                    if (volumeSeekBar11 == null) {
                        volumeSeekBar11 = null;
                    }
                    volumeSeekBar11.setBackground(null);
                    VolumePanelRow findRow5 = VolumePanelStateExt.INSTANCE.findRow(volumePanelState2, 20);
                    if (findRow5 == null || (str = findRow5.getSmartViewLabel()) == null) {
                        str = "";
                    }
                    Toast.makeText(getContext(), getContext().getString(R.string.volume_use_your_phone_volume_smart_view, str), 0).show();
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.storeInteractor.dispose();
        VolumeSeekBar volumeSeekBar = this.seekBar;
        if (volumeSeekBar == null) {
            volumeSeekBar = null;
        }
        volumeSeekBar.storeInteractor.dispose();
    }

    public final void updateBluetoothDeviceIcon(VolumePanelRow volumePanelRow) {
        Drawable drawable;
        ImageView imageView = null;
        if (volumePanelRow.getIconType() != 2 && volumePanelRow.getIconType() != 10 && volumePanelRow.getIconType() != 13 && volumePanelRow.getIconType() != 12) {
            ViewVisibilityUtil viewVisibilityUtil = ViewVisibilityUtil.INSTANCE;
            ImageView imageView2 = this.bluetoothDeviceIcon;
            if (imageView2 != null) {
                imageView = imageView2;
            }
            viewVisibilityUtil.getClass();
            ViewVisibilityUtil.setGone(imageView);
            return;
        }
        String dualBtDeviceAddress = volumePanelRow.getDualBtDeviceAddress();
        if (this.isDualViewEnabled && !TextUtils.isEmpty(dualBtDeviceAddress)) {
            int iconType = volumePanelRow.getIconType();
            if (iconType != 10) {
                if (iconType != 13) {
                    Context context = getContext();
                    BluetoothUtils.AnonymousClass2 anonymousClass2 = BluetoothUtils.mOnInitCallback;
                    drawable = BluetoothUtils.getHostOverlayIconDrawable(context, LocalBluetoothManager.getInstance(context, anonymousClass2).mCachedDeviceManager.findDevice(LocalBluetoothManager.getInstance(context, anonymousClass2).mLocalAdapter.mAdapter.getRemoteDevice(dualBtDeviceAddress)));
                } else {
                    drawable = getContext().getResources().getDrawable(R.drawable.tw_ic_audio_buds3, null);
                }
            } else {
                drawable = getContext().getResources().getDrawable(R.drawable.tw_ic_audio_buds, null);
            }
            ImageView imageView3 = this.bluetoothDeviceIcon;
            if (imageView3 == null) {
                imageView3 = null;
            }
            imageView3.setImageDrawable(drawable);
            ViewVisibilityUtil viewVisibilityUtil2 = ViewVisibilityUtil.INSTANCE;
            ImageView imageView4 = this.bluetoothDeviceIcon;
            if (imageView4 != null) {
                imageView = imageView4;
            }
            viewVisibilityUtil2.getClass();
            imageView.setVisibility(0);
        }
    }

    public final void updateContentDescription(VolumePanelState volumePanelState, VolumePanelRow volumePanelRow) {
        String string;
        if (this.stream == 2) {
            if (volumePanelRow.getIconType() == 0) {
                string = getContext().getString(R.string.volume_icon_content_description_ringtone_to_sound);
            } else if (volumePanelState.isHasVibrator()) {
                string = getContext().getString(R.string.volume_icon_content_description_ringtone_to_vib);
            } else {
                string = getContext().getString(R.string.volume_icon_content_description_ringtone_to_mute);
            }
        } else if (volumePanelRow.getIconType() != 1 && !volumePanelRow.isMuted() && volumePanelRow.getRealLevel() != 0) {
            string = getContext().getString(R.string.volume_icon_content_description_to_mute, this.label);
        } else {
            string = getContext().getString(R.string.volume_icon_content_description_to_unmute, this.label);
        }
        VolumeIcon volumeIcon = this.icon;
        if (volumeIcon == null) {
            volumeIcon = null;
        }
        volumeIcon.setContentDescription(string);
    }

    public final void updateProgress(VolumePanelState volumePanelState) {
        VolumePanelRow findRow = VolumePanelStateExt.INSTANCE.findRow(volumePanelState, this.stream);
        if (findRow != null) {
            this.springFinalPosition = ViewLevelConverter.viewRealLevel(findRow);
            VolumeSeekBar volumeSeekBar = null;
            if (findRow.isVisible()) {
                SpringAnimation springAnimation = this.progressBarSpring;
                VolumeSeekBar volumeSeekBar2 = this.seekBar;
                if (volumeSeekBar2 != null) {
                    volumeSeekBar = volumeSeekBar2;
                }
                springAnimation.setStartValue(volumeSeekBar.getProgress());
                this.progressBarSpring.animateToFinalPosition(this.springFinalPosition);
                return;
            }
            this.progressBarSpring.cancel();
            VolumeSeekBar volumeSeekBar3 = this.seekBar;
            if (volumeSeekBar3 != null) {
                volumeSeekBar = volumeSeekBar3;
            }
            volumeSeekBar.setProgress(this.springFinalPosition);
        }
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.systemui.volume.view.VolumeRowView$recheckCallback$1] */
    public VolumeRowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.storeInteractor = new StoreInteractor(this, null);
        this.progressBarSpring = new SpringAnimation(new FloatValueHolder());
        this.recheckCallback = new Runnable() { // from class: com.android.systemui.volume.view.VolumeRowView$recheckCallback$1
            @Override // java.lang.Runnable
            public final void run() {
                StoreInteractor storeInteractor = VolumeRowView.this.storeInteractor;
                VolumePanelAction.Builder stream = new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_CHECK_IF_NEED_TO_SET_PROGRESS).stream(VolumeRowView.this.stream);
                VolumeSeekBar volumeSeekBar = VolumeRowView.this.seekBar;
                if (volumeSeekBar == null) {
                    volumeSeekBar = null;
                }
                storeInteractor.sendAction(stream.progress(volumeSeekBar.getProgress()).build(), false);
            }
        };
    }
}

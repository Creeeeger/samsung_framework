package com.android.systemui.volume.view.subscreen.full;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.android.systemui.R;
import com.android.systemui.volume.store.StoreInteractor;
import com.android.systemui.volume.util.ColorUtils;
import com.android.systemui.volume.util.ViewVisibilityUtil;
import com.android.systemui.volume.view.icon.VolumeIcons;
import com.samsung.systemui.splugins.extensions.VolumePanelStateExt;
import com.samsung.systemui.splugins.volume.VolumeObserver;
import com.samsung.systemui.splugins.volume.VolumePanelRow;
import com.samsung.systemui.splugins.volume.VolumePanelState;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubFullLayoutVolumeIcon extends FrameLayout implements VolumeObserver<VolumePanelState> {
    public int currentMediaIconState;
    public final ColorStateList iconActiveColor;
    public final ColorStateList iconEarShockColor;
    public final ColorStateList iconMutedColor;
    public int iconType;
    public View iconView;
    public boolean isAnimatableIcon;
    public final Lazy storeInteractor$delegate;
    public int stream;
    public SubFullLayoutVolumePanelMotion volumePanelMotion;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[VolumePanelState.StateType.values().length];
            try {
                iArr[VolumePanelState.StateType.STATE_DISMISS_VOLUME_PANEL_COMPLETED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_UPDATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_SET_STREAM_VOLUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_UPDATE_PROGRESS_BAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_SET_VOLUME_STATE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        new Companion(null);
    }

    public SubFullLayoutVolumeIcon(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.iconActiveColor = ColorUtils.getSingleColorStateList(R.color.volume_icon_color, context);
        this.iconMutedColor = ColorUtils.getSingleColorStateList(R.color.volume_icon_color, context);
        this.iconEarShockColor = ColorUtils.getSingleColorStateList(R.color.volume_icon_earshock_color, context);
        this.currentMediaIconState = -1;
        this.iconType = -1;
        this.storeInteractor$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.volume.view.subscreen.full.SubFullLayoutVolumeIcon$storeInteractor$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return new StoreInteractor(SubFullLayoutVolumeIcon.this, null, 2, null);
            }
        });
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final CharSequence getAccessibilityClassName() {
        return "android.widget.Button";
    }

    @Override // com.samsung.systemui.splugins.volume.VolumeObserver
    public final void onChanged(VolumePanelState volumePanelState) {
        SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion;
        SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion2;
        VolumePanelRow findRow;
        VolumePanelRow findRow2;
        VolumePanelState volumePanelState2 = volumePanelState;
        int i = WhenMappings.$EnumSwitchMapping$0[volumePanelState2.getStateType().ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5 && this.isAnimatableIcon && this.stream == volumePanelState2.getStream()) {
                            if (!VolumePanelValues.isRing(this.stream) && !VolumePanelValues.isAlarm(this.stream)) {
                                setMediaIconState(volumePanelState2.getIconTargetState(), volumePanelState2.getIconCurrentState(), true);
                                return;
                            } else {
                                setSoundIconState(volumePanelState2.getIconTargetState(), volumePanelState2.getIconCurrentState(), this.iconType, true);
                                return;
                            }
                        }
                        return;
                    }
                    if (this.stream == volumePanelState2.getStream() && (findRow2 = VolumePanelStateExt.INSTANCE.findRow(volumePanelState2, this.stream)) != null) {
                        updateIconLayout(findRow2, false);
                        updateIconState(findRow2, true);
                        return;
                    }
                    return;
                }
                if (this.stream == volumePanelState2.getStream() && (findRow = VolumePanelStateExt.INSTANCE.findRow(volumePanelState2, this.stream)) != null) {
                    updateIconState(findRow, false);
                    return;
                }
                return;
            }
            VolumePanelRow findRow3 = VolumePanelStateExt.INSTANCE.findRow(volumePanelState2, this.stream);
            if (findRow3 != null) {
                if (!findRow3.isVisible()) {
                    findRow3 = null;
                }
                if (findRow3 != null) {
                    updateIconLayout(findRow3, false);
                    if (!VolumeIcons.isWaveAnimatableIcon(findRow3.getStreamType(), findRow3.getIconType())) {
                        updateIconState(findRow3, false);
                    }
                    int iconType = findRow3.getIconType();
                    View view = this.iconView;
                    if (view != null && this.iconType != iconType && VolumePanelValues.isRing(this.stream) && iconType != 3) {
                        ImageView imageView = (ImageView) view.findViewById(R.id.volume_icon_mute_splash);
                        ImageView imageView2 = (ImageView) view.findViewById(R.id.volume_mute_icon);
                        ImageView imageView3 = (ImageView) view.findViewById(R.id.volume_normal_icon);
                        ImageView imageView4 = (ImageView) view.findViewById(R.id.volume_sound_icon_wave_l);
                        ImageView imageView5 = (ImageView) view.findViewById(R.id.volume_sound_icon_wave_s);
                        ImageView imageView6 = (ImageView) view.findViewById(R.id.volume_vibrate_icon);
                        if (iconType == 1) {
                            SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion3 = this.volumePanelMotion;
                            if (subFullLayoutVolumePanelMotion3 == null) {
                                subFullLayoutVolumePanelMotion2 = null;
                            } else {
                                subFullLayoutVolumePanelMotion2 = subFullLayoutVolumePanelMotion3;
                            }
                            subFullLayoutVolumePanelMotion2.startMuteAnimation(this.stream, imageView3, imageView5, imageView4, imageView6, imageView2, imageView);
                        } else {
                            SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion4 = this.volumePanelMotion;
                            if (subFullLayoutVolumePanelMotion4 == null) {
                                subFullLayoutVolumePanelMotion = null;
                            } else {
                                subFullLayoutVolumePanelMotion = subFullLayoutVolumePanelMotion4;
                            }
                            subFullLayoutVolumePanelMotion.startSoundVibrationAnimation(imageView6, imageView3, imageView5, imageView4, imageView2, imageView);
                        }
                        this.currentMediaIconState = 0;
                        this.iconType = iconType;
                    }
                    updateIconTintColor(volumePanelState2, findRow3);
                    updateEnableState(volumePanelState2, findRow3);
                    return;
                }
                return;
            }
            return;
        }
        ((StoreInteractor) this.storeInteractor$delegate.getValue()).dispose();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ((StoreInteractor) this.storeInteractor$delegate.getValue()).dispose();
    }

    public final void setMediaIconState(int i, int i2, boolean z) {
        int i3;
        SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion;
        SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion2;
        SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion3;
        SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion4;
        View view = this.iconView;
        if (view != null && i != i2) {
            if (z && i2 != -1) {
                if (i - i2 > 0) {
                    i3 = i2 + 1;
                } else {
                    i3 = i2 - 1;
                }
            } else {
                i3 = i;
            }
            ImageView imageView = (ImageView) view.findViewById(R.id.volume_icon_mute_splash);
            ImageView imageView2 = (ImageView) view.findViewById(R.id.volume_media_icon_mute);
            ImageView imageView3 = (ImageView) view.findViewById(R.id.volume_media_icon_note);
            ImageView imageView4 = (ImageView) view.findViewById(R.id.volume_media_icon_wave_l);
            ImageView imageView5 = (ImageView) view.findViewById(R.id.volume_media_icon_wave_s);
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion5 = this.volumePanelMotion;
                        if (subFullLayoutVolumePanelMotion5 == null) {
                            subFullLayoutVolumePanelMotion4 = null;
                        } else {
                            subFullLayoutVolumePanelMotion4 = subFullLayoutVolumePanelMotion5;
                        }
                        subFullLayoutVolumePanelMotion4.startMuteAnimation(this.stream, imageView3, imageView5, imageView4, null, imageView2, imageView);
                    } else {
                        SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion6 = this.volumePanelMotion;
                        if (subFullLayoutVolumePanelMotion6 == null) {
                            subFullLayoutVolumePanelMotion3 = null;
                        } else {
                            subFullLayoutVolumePanelMotion3 = subFullLayoutVolumePanelMotion6;
                        }
                        subFullLayoutVolumePanelMotion3.startMaxAnimation(this.stream, imageView3, imageView5, imageView4, null, imageView2, imageView);
                    }
                } else {
                    SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion7 = this.volumePanelMotion;
                    if (subFullLayoutVolumePanelMotion7 == null) {
                        subFullLayoutVolumePanelMotion2 = null;
                    } else {
                        subFullLayoutVolumePanelMotion2 = subFullLayoutVolumePanelMotion7;
                    }
                    subFullLayoutVolumePanelMotion2.startMidAnimation(this.stream, i, imageView3, imageView5, imageView4, null, imageView2, imageView);
                }
            } else {
                SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion8 = this.volumePanelMotion;
                if (subFullLayoutVolumePanelMotion8 == null) {
                    subFullLayoutVolumePanelMotion = null;
                } else {
                    subFullLayoutVolumePanelMotion = subFullLayoutVolumePanelMotion8;
                }
                subFullLayoutVolumePanelMotion.startMinAnimation(this.stream, i, imageView3, imageView5, imageView4, null, imageView2, imageView);
            }
            this.currentMediaIconState = i;
        }
    }

    public final void setSoundIconState(int i, int i2, int i3, boolean z) {
        int i4;
        SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion;
        SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion2;
        SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion3;
        SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion4;
        SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion5;
        int i5;
        View view = this.iconView;
        if (view == null) {
            return;
        }
        if (i != i2 || this.iconType != i3) {
            this.iconType = i3;
            if (z && i2 != -1 && i != 0) {
                if (i3 == 0) {
                    i5 = 0;
                } else {
                    i5 = i2;
                }
                if (i - i5 > 0) {
                    i4 = i2 + 1;
                } else {
                    i4 = i2 - 1;
                }
            } else {
                i4 = i;
            }
            ImageView imageView = (ImageView) view.findViewById(R.id.volume_icon_mute_splash);
            ImageView imageView2 = (ImageView) view.findViewById(R.id.volume_mute_icon);
            ImageView imageView3 = (ImageView) view.findViewById(R.id.volume_normal_icon);
            ImageView imageView4 = (ImageView) view.findViewById(R.id.volume_sound_icon_wave_l);
            ImageView imageView5 = (ImageView) view.findViewById(R.id.volume_sound_icon_wave_s);
            ImageView imageView6 = (ImageView) view.findViewById(R.id.volume_vibrate_icon);
            if (VolumePanelValues.isRing(this.stream) && i == 0) {
                if (i3 == 1) {
                    SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion6 = this.volumePanelMotion;
                    if (subFullLayoutVolumePanelMotion6 == null) {
                        subFullLayoutVolumePanelMotion5 = null;
                    } else {
                        subFullLayoutVolumePanelMotion5 = subFullLayoutVolumePanelMotion6;
                    }
                    subFullLayoutVolumePanelMotion5.startMuteAnimation(this.stream, imageView3, imageView5, imageView4, imageView6, imageView2, imageView);
                } else {
                    SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion7 = this.volumePanelMotion;
                    if (subFullLayoutVolumePanelMotion7 == null) {
                        subFullLayoutVolumePanelMotion4 = null;
                    } else {
                        subFullLayoutVolumePanelMotion4 = subFullLayoutVolumePanelMotion7;
                    }
                    subFullLayoutVolumePanelMotion4.startSoundVibrationAnimation(imageView6, imageView3, imageView5, imageView4, imageView2, imageView);
                }
            } else if (i4 == 3) {
                SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion8 = this.volumePanelMotion;
                if (subFullLayoutVolumePanelMotion8 == null) {
                    subFullLayoutVolumePanelMotion3 = null;
                } else {
                    subFullLayoutVolumePanelMotion3 = subFullLayoutVolumePanelMotion8;
                }
                subFullLayoutVolumePanelMotion3.startMaxAnimation(this.stream, imageView3, imageView5, imageView4, imageView6, imageView2, imageView);
            } else if (i4 == 2) {
                SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion9 = this.volumePanelMotion;
                if (subFullLayoutVolumePanelMotion9 == null) {
                    subFullLayoutVolumePanelMotion2 = null;
                } else {
                    subFullLayoutVolumePanelMotion2 = subFullLayoutVolumePanelMotion9;
                }
                subFullLayoutVolumePanelMotion2.startMidAnimation(this.stream, i, imageView3, imageView5, imageView4, imageView6, imageView2, imageView);
            } else if (i4 == 1) {
                SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion10 = this.volumePanelMotion;
                if (subFullLayoutVolumePanelMotion10 == null) {
                    subFullLayoutVolumePanelMotion = null;
                } else {
                    subFullLayoutVolumePanelMotion = subFullLayoutVolumePanelMotion10;
                }
                subFullLayoutVolumePanelMotion.startMinAnimation(this.stream, i, imageView3, imageView5, imageView4, imageView6, imageView2, imageView);
            }
            this.currentMediaIconState = i;
        }
    }

    public final void updateEnableState(VolumePanelState volumePanelState, VolumePanelRow volumePanelRow) {
        float f = 1.0f;
        boolean z = true;
        if (!volumePanelRow.isSliderEnabled()) {
            setEnabled(volumePanelRow.isIconEnabled());
            if (!volumePanelRow.isIconEnabled()) {
                f = 0.4f;
            }
            setAlpha(f);
        } else {
            setEnabled(true);
            setAlpha(1.0f);
        }
        if (volumePanelState.isShowA11yStream()) {
            if (!isEnabled() || !volumePanelRow.isIconClickable()) {
                z = false;
            }
            setClickable(z);
        }
    }

    public final void updateIconLayout(VolumePanelRow volumePanelRow, boolean z) {
        boolean z2;
        boolean isAnimatableIcon = VolumeIcons.isAnimatableIcon(volumePanelRow.getStreamType(), volumePanelRow.getIconType());
        if (!z && this.isAnimatableIcon == isAnimatableIcon) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (z2) {
            if (getChildCount() > 0) {
                removeAllViews();
            }
            View view = null;
            if (isAnimatableIcon) {
                if (VolumeIcons.isForMediaIcon(this.stream)) {
                    view = LayoutInflater.from(getContext()).inflate(R.layout.sub_full_volume_animated_media_icon, (ViewGroup) null);
                } else if (!VolumePanelValues.isRing(this.stream) && !VolumePanelValues.isAlarm(this.stream)) {
                    View inflate = LayoutInflater.from(getContext()).inflate(R.layout.sub_full_volume_animated_icon, (ViewGroup) null);
                    if (inflate instanceof ViewGroup) {
                        view = (ViewGroup) inflate;
                    }
                } else {
                    view = LayoutInflater.from(getContext()).inflate(R.layout.sub_full_volume_animated_ringtone_icon, (ViewGroup) null);
                }
            } else {
                view = LayoutInflater.from(getContext()).inflate(R.layout.sub_full_volume_default_icon, (ViewGroup) null);
            }
            this.iconView = view;
            addView(view);
        }
        this.isAnimatableIcon = isAnimatableIcon;
    }

    public final void updateIconState(VolumePanelRow volumePanelRow, boolean z) {
        int i;
        ImageView imageView = null;
        SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion = null;
        SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion2 = null;
        if (VolumeIcons.isAnimatableIcon(volumePanelRow.getStreamType(), volumePanelRow.getIconType()) && this.isAnimatableIcon) {
            View view = this.iconView;
            if (view != null) {
                int i2 = 0;
                if (!VolumeIcons.isForMediaIcon(this.stream) && !VolumePanelValues.isRing(this.stream) && !VolumePanelValues.isAlarm(this.stream)) {
                    ImageView imageView2 = (ImageView) view.findViewById(R.id.volume_normal_icon);
                    ImageView imageView3 = (ImageView) view.findViewById(R.id.volume_mute_icon);
                    ImageView imageView4 = (ImageView) view.findViewById(R.id.volume_vibrate_icon);
                    ImageView imageView5 = (ImageView) view.findViewById(R.id.volume_icon_mute_splash);
                    int streamType = volumePanelRow.getStreamType();
                    if (VolumePanelValues.isNotification(streamType)) {
                        imageView2.setImageDrawable(getContext().getDrawable(R.drawable.tw_ic_audio_noti_mtrl));
                        imageView3.setImageDrawable(getContext().getDrawable(R.drawable.tw_ic_audio_noti_mute_mtrl));
                        imageView4.setImageDrawable(getContext().getDrawable(R.drawable.tw_ic_audio_noti_vibrate_mtrl));
                    } else if (VolumePanelValues.isSystem(streamType)) {
                        imageView2.setImageDrawable(getContext().getDrawable(R.drawable.tw_ic_audio_system_mtrl));
                        imageView3.setImageDrawable(getContext().getDrawable(R.drawable.tw_ic_audio_system_mute_mtrl));
                    }
                    int iconType = volumePanelRow.getIconType();
                    if (this.iconType != iconType) {
                        this.iconType = iconType;
                        if (iconType != 0) {
                            if (iconType != 1) {
                                if (iconType == 3) {
                                    ViewVisibilityUtil.INSTANCE.getClass();
                                    imageView2.setVisibility(0);
                                    ViewVisibilityUtil.setGone(imageView3);
                                    ViewVisibilityUtil.setGone(imageView5);
                                    ViewVisibilityUtil.setGone(imageView4);
                                    return;
                                }
                                return;
                            }
                            ViewVisibilityUtil.INSTANCE.getClass();
                            ViewVisibilityUtil.setGone(imageView2);
                            imageView3.setVisibility(0);
                            imageView5.setVisibility(0);
                            ViewVisibilityUtil.setGone(imageView4);
                            SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion3 = this.volumePanelMotion;
                            if (subFullLayoutVolumePanelMotion3 != null) {
                                subFullLayoutVolumePanelMotion = subFullLayoutVolumePanelMotion3;
                            }
                            subFullLayoutVolumePanelMotion.getClass();
                            SubFullLayoutVolumePanelMotion.startSplashAnimation(imageView5);
                            return;
                        }
                        ViewVisibilityUtil.INSTANCE.getClass();
                        ViewVisibilityUtil.setGone(imageView2);
                        ViewVisibilityUtil.setGone(imageView3);
                        ViewVisibilityUtil.setGone(imageView5);
                        imageView4.setVisibility(0);
                        SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion4 = this.volumePanelMotion;
                        if (subFullLayoutVolumePanelMotion4 != null) {
                            subFullLayoutVolumePanelMotion2 = subFullLayoutVolumePanelMotion4;
                        }
                        subFullLayoutVolumePanelMotion2.startVibrationAnimation(imageView4);
                        return;
                    }
                    return;
                }
                int levelMax = volumePanelRow.getLevelMax();
                if (VolumeIcons.isForMediaIcon(this.stream)) {
                    i = 100;
                } else {
                    i = 1;
                }
                int i3 = levelMax * i;
                int realLevel = volumePanelRow.getRealLevel();
                double d = realLevel;
                double d2 = i3;
                if (d > 0.5d * d2) {
                    i2 = 3;
                } else if (d > d2 * 0.25d) {
                    i2 = 2;
                } else if (realLevel > 0) {
                    i2 = 1;
                }
                if (!VolumePanelValues.isRing(this.stream) && !VolumePanelValues.isAlarm(this.stream)) {
                    setMediaIconState(i2, this.currentMediaIconState, z);
                    return;
                } else {
                    setSoundIconState(i2, this.currentMediaIconState, volumePanelRow.getIconType(), z);
                    return;
                }
            }
            return;
        }
        View view2 = this.iconView;
        if (view2 instanceof ImageView) {
            imageView = (ImageView) view2;
        }
        if (imageView != null) {
            imageView.setImageDrawable(getContext().getDrawable(VolumeIcons.getDefaultIconResId(volumePanelRow.getStreamType(), volumePanelRow.getIconType())));
        }
    }

    public final void updateIconTintColor(VolumePanelState volumePanelState, VolumePanelRow volumePanelRow) {
        ColorStateList colorStateList;
        ImageView imageView;
        View view = this.iconView;
        if (view == null) {
            return;
        }
        if (volumePanelRow.getIconType() != 0 && volumePanelRow.getIconType() != 3 && (volumePanelRow.isMuted() || volumePanelRow.getRealLevel() == 0)) {
            colorStateList = this.iconMutedColor;
        } else {
            if (volumePanelState.isSafeMediaDeviceOn() || volumePanelState.isSafeMediaPinDeviceOn()) {
                int realLevel = volumePanelRow.getRealLevel();
                if (VolumePanelValues.isAudioSharing(volumePanelRow.getStreamType())) {
                    realLevel *= 100;
                }
                int earProtectLevel = volumePanelRow.getEarProtectLevel();
                boolean z = true;
                if (1 > earProtectLevel || earProtectLevel >= realLevel) {
                    z = false;
                }
                if (z) {
                    colorStateList = this.iconEarShockColor;
                }
            }
            colorStateList = this.iconActiveColor;
        }
        if (!VolumeIcons.isAnimatableIcon(volumePanelRow.getStreamType(), volumePanelRow.getIconType())) {
            if (view instanceof ImageView) {
                imageView = (ImageView) view;
            } else {
                imageView = null;
            }
            if (imageView != null) {
                imageView.setImageTintList(colorStateList);
            }
        } else if (VolumeIcons.isForMediaIcon(this.stream)) {
            ((ImageView) view.findViewById(R.id.volume_media_icon_note)).setImageTintList(colorStateList);
            ((ImageView) view.findViewById(R.id.volume_media_icon_wave_l)).setImageTintList(colorStateList);
            ((ImageView) view.findViewById(R.id.volume_media_icon_wave_s)).setImageTintList(colorStateList);
        } else if (VolumePanelValues.isRing(this.stream) || VolumePanelValues.isAlarm(this.stream)) {
            ((ImageView) view.findViewById(R.id.volume_normal_icon)).setImageTintList(colorStateList);
            ((ImageView) view.findViewById(R.id.volume_sound_icon_wave_l)).setImageTintList(colorStateList);
            ((ImageView) view.findViewById(R.id.volume_sound_icon_wave_s)).setImageTintList(colorStateList);
        }
        ImageView imageView2 = (ImageView) view.findViewById(R.id.volume_icon_mute_splash);
        if (imageView2 != null) {
            imageView2.setImageTintList(colorStateList);
        }
    }
}

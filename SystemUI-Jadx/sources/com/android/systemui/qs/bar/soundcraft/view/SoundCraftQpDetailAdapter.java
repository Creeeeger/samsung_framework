package com.android.systemui.qs.bar.soundcraft.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.android.systemui.R;
import com.android.systemui.plugins.qs.DetailAdapter;
import com.android.systemui.qs.FullScreenDetailAdapter;
import com.android.systemui.qs.SecQSPanelController;
import com.android.systemui.qs.SecQSPanelControllerBase;
import com.android.systemui.qs.bar.soundcraft.di.vm.SoundCraftViewModelProvider;
import com.android.systemui.qs.bar.soundcraft.interfaces.routine.manager.RoutineManager;
import com.android.systemui.qs.bar.soundcraft.view.actionbar.SoundCraftActionBarView;
import com.android.systemui.qs.bar.soundcraft.view.audioeffect.AudioEffectBoxView;
import com.android.systemui.qs.bar.soundcraft.view.audioeffect.AudioEffectHeaderView;
import com.android.systemui.qs.bar.soundcraft.view.noisecontrol.NoiseControlBoxView;
import com.android.systemui.qs.bar.soundcraft.view.routine.RoutineTestView;
import com.android.systemui.qs.bar.soundcraft.view.wearable.WearableLinkBoxView;
import com.android.systemui.qs.bar.soundcraft.viewbinding.AudioEffectBoxViewBinding;
import com.android.systemui.qs.bar.soundcraft.viewbinding.AudioEffectHeaderViewBinding;
import com.android.systemui.qs.bar.soundcraft.viewbinding.NoiseControlBoxViewBinding;
import com.android.systemui.qs.bar.soundcraft.viewbinding.RoutineTestViewBinding;
import com.android.systemui.qs.bar.soundcraft.viewbinding.SoundCraftActionBarBinding;
import com.android.systemui.qs.bar.soundcraft.viewbinding.SoundCraftViewBinding;
import com.android.systemui.qs.bar.soundcraft.viewbinding.SoundCraftViewBindingFactory;
import com.android.systemui.qs.bar.soundcraft.viewbinding.WearableLinkBoxViewBinding;
import com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel;
import com.android.systemui.qs.bar.soundcraft.viewmodel.actionbar.SoundCraftActionBarViewModel;
import com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectBoxViewModel;
import com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel;
import com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.EqualizerViewModel;
import com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.SpatialAudioViewModel;
import com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.VoiceBoostViewModel;
import com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.VolumeNormalizationViewModel;
import com.android.systemui.qs.bar.soundcraft.viewmodel.base.BaseViewModel;
import com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol.ActiveNoiseCancelingViewModel;
import com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol.AdaptiveViewModel;
import com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol.AmbientSoundViewModel;
import com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol.NoiseCancelingLevelViewModel;
import com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol.NoiseCancelingSwitchBarViewModel;
import com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol.NoiseControlBoxViewModel;
import com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol.NoiseControlEffectBoxViewModel;
import com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol.NoiseControlOffViewModel;
import com.android.systemui.qs.bar.soundcraft.viewmodel.routine.RoutineTestViewModel;
import com.android.systemui.qs.bar.soundcraft.viewmodel.wearable.WearableLinkBoxViewModel;
import com.android.systemui.volume.util.ViewVisibilityUtil;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SoundCraftQpDetailAdapter extends FullScreenDetailAdapter {
    public SoundCraftViewBinding viewBinding;
    public SoundCraftViewModelProvider viewModelProvider;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public SoundCraftQpDetailAdapter(Context context) {
        Log.d("SoundCraft.QpDetailAdapter", "init");
    }

    public final void bindViewModel(SoundCraftViewBinding soundCraftViewBinding) {
        SoundCraftViewModel soundCraftViewModel;
        SoundCraftActionBarViewModel soundCraftActionBarViewModel;
        AudioEffectBoxViewModel audioEffectBoxViewModel;
        AudioEffectHeaderViewModel audioEffectHeaderViewModel;
        WearableLinkBoxViewModel wearableLinkBoxViewModel;
        RoutineTestViewModel routineTestViewModel;
        RoutineTestViewModel routineTestViewModel2;
        Log.d("SoundCraft.QpDetailAdapter", "bindViewModel");
        final SoundCraftDetailPageView soundCraftDetailPageView = soundCraftViewBinding.root;
        soundCraftDetailPageView.viewBinding = soundCraftViewBinding;
        SoundCraftViewModelProvider viewModelProvider = getViewModelProvider();
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SoundCraftViewModel.class);
        if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(SoundCraftViewModel.class))) {
            soundCraftViewModel = viewModelProvider.craftViewModel;
            if (soundCraftViewModel == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(SoundCraftActionBarViewModel.class))) {
            BaseViewModel baseViewModel = viewModelProvider.actionBarViewModel;
            if (baseViewModel != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(NoiseControlBoxViewModel.class))) {
            BaseViewModel baseViewModel2 = viewModelProvider.noiseControlBoxViewModel;
            if (baseViewModel2 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel2;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(AudioEffectBoxViewModel.class))) {
            BaseViewModel baseViewModel3 = viewModelProvider.audioEffectBoxViewModel;
            if (baseViewModel3 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel3;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(AudioEffectHeaderViewModel.class))) {
            BaseViewModel baseViewModel4 = viewModelProvider.audioEffectHeaderViewModel;
            if (baseViewModel4 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel4;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(WearableLinkBoxViewModel.class))) {
            BaseViewModel baseViewModel5 = viewModelProvider.wearableLinkBoxViewModel;
            if (baseViewModel5 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel5;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(SpatialAudioViewModel.class))) {
            BaseViewModel baseViewModel6 = viewModelProvider.spatialAudioViewModel;
            if (baseViewModel6 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel6;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(EqualizerViewModel.class))) {
            BaseViewModel baseViewModel7 = viewModelProvider.equalizerViewModel;
            if (baseViewModel7 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel7;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(VoiceBoostViewModel.class))) {
            BaseViewModel baseViewModel8 = viewModelProvider.voiceBoostViewModel;
            if (baseViewModel8 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel8;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(VolumeNormalizationViewModel.class))) {
            BaseViewModel baseViewModel9 = viewModelProvider.volumeNormalizationViewModel;
            if (baseViewModel9 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel9;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(ActiveNoiseCancelingViewModel.class))) {
            BaseViewModel baseViewModel10 = viewModelProvider.activeNoiseCancelingViewModel;
            if (baseViewModel10 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel10;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(AdaptiveViewModel.class))) {
            BaseViewModel baseViewModel11 = viewModelProvider.adaptiveViewModel;
            if (baseViewModel11 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel11;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(AmbientSoundViewModel.class))) {
            BaseViewModel baseViewModel12 = viewModelProvider.ambientSoundViewModel;
            if (baseViewModel12 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel12;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(NoiseCancelingLevelViewModel.class))) {
            BaseViewModel baseViewModel13 = viewModelProvider.noiseCancelingViewModel;
            if (baseViewModel13 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel13;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(NoiseControlEffectBoxViewModel.class))) {
            BaseViewModel baseViewModel14 = viewModelProvider.noiseControlEffectBoxViewModel;
            if (baseViewModel14 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel14;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(NoiseControlOffViewModel.class))) {
            BaseViewModel baseViewModel15 = viewModelProvider.noiseControlOffViewModel;
            if (baseViewModel15 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel15;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(NoiseCancelingSwitchBarViewModel.class))) {
            BaseViewModel baseViewModel16 = viewModelProvider.noiseCancelingSwitchBarViewModel;
            if (baseViewModel16 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel16;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(RoutineTestViewModel.class))) {
            BaseViewModel baseViewModel17 = viewModelProvider.routineTestViewModel;
            if (baseViewModel17 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel17;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else {
            throw new RuntimeException();
        }
        Log.d("SoundCraft.DetailPageView", "bindViewModel : viewModel=" + soundCraftViewModel);
        soundCraftViewModel.showNoiseControlBox.observe(soundCraftDetailPageView, new Observer() { // from class: com.android.systemui.qs.bar.soundcraft.view.SoundCraftDetailPageView$bindViewModel$1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Log.d("SoundCraft.DetailPageView", "showNoiseControlBox=" + ((Boolean) obj));
                SoundCraftViewBinding soundCraftViewBinding2 = SoundCraftDetailPageView.this.viewBinding;
                NoiseCancelingLevelViewModel noiseCancelingLevelViewModel = null;
                if (soundCraftViewBinding2 == null) {
                    soundCraftViewBinding2 = null;
                }
                NoiseControlBoxView noiseControlBoxView = soundCraftViewBinding2.noiseControlBox.root;
                NoiseControlBoxViewModel noiseControlBoxViewModel = noiseControlBoxView.noiseControlBoxViewModel;
                if (noiseControlBoxViewModel == null) {
                    noiseControlBoxViewModel = null;
                }
                noiseControlBoxViewModel.notifyChange();
                NoiseControlEffectBoxViewModel noiseControlEffectBoxViewModel = noiseControlBoxView.noiseControlEffectBoxViewModel;
                if (noiseControlEffectBoxViewModel == null) {
                    noiseControlEffectBoxViewModel = null;
                }
                noiseControlEffectBoxViewModel.notifyChange();
                NoiseCancelingLevelViewModel noiseCancelingLevelViewModel2 = noiseControlBoxView.noiseCancelingLevelViewModel;
                if (noiseCancelingLevelViewModel2 != null) {
                    noiseCancelingLevelViewModel = noiseCancelingLevelViewModel2;
                }
                noiseCancelingLevelViewModel.notifyChange();
                noiseControlBoxView.updateLayout();
            }
        });
        soundCraftViewModel.showAudioEffectBox.observe(soundCraftDetailPageView, new Observer() { // from class: com.android.systemui.qs.bar.soundcraft.view.SoundCraftDetailPageView$bindViewModel$2
            /* JADX WARN: Removed duplicated region for block: B:176:0x0988  */
            /* JADX WARN: Removed duplicated region for block: B:188:0x0b72  */
            /* JADX WARN: Removed duplicated region for block: B:191:0x0b74  */
            /* JADX WARN: Removed duplicated region for block: B:29:0x05b0  */
            /* JADX WARN: Removed duplicated region for block: B:41:0x079d  */
            @Override // androidx.lifecycle.Observer
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void onChanged(java.lang.Object r26) {
                /*
                    Method dump skipped, instructions count: 2962
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.bar.soundcraft.view.SoundCraftDetailPageView$bindViewModel$2.onChanged(java.lang.Object):void");
            }
        });
        soundCraftViewModel.showDownloadGuideView.observe(soundCraftDetailPageView, new Observer() { // from class: com.android.systemui.qs.bar.soundcraft.view.SoundCraftDetailPageView$bindViewModel$3
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Log.d("SoundCraft.DetailPageView", "showDownloadView=" + ((Boolean) obj));
            }
        });
        soundCraftViewModel.showLoadingView.observe(soundCraftDetailPageView, new Observer() { // from class: com.android.systemui.qs.bar.soundcraft.view.SoundCraftDetailPageView$bindViewModel$4
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Log.d("SoundCraft.DetailPageView", "showLoadingView=" + ((Boolean) obj));
            }
        });
        soundCraftViewModel.notifyChange();
        SoundCraftActionBarBinding soundCraftActionBarBinding = soundCraftViewBinding.actionBar;
        final SoundCraftActionBarView soundCraftActionBarView = soundCraftActionBarBinding.root;
        soundCraftActionBarView.viewBinding = soundCraftActionBarBinding;
        SoundCraftViewModelProvider viewModelProvider2 = getViewModelProvider();
        ClassReference orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(SoundCraftActionBarViewModel.class);
        if (Intrinsics.areEqual(orCreateKotlinClass2, Reflection.getOrCreateKotlinClass(SoundCraftViewModel.class))) {
            BaseViewModel baseViewModel18 = viewModelProvider2.craftViewModel;
            if (baseViewModel18 != null) {
                soundCraftActionBarViewModel = (SoundCraftActionBarViewModel) baseViewModel18;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.actionbar.SoundCraftActionBarViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass2, Reflection.getOrCreateKotlinClass(SoundCraftActionBarViewModel.class))) {
            soundCraftActionBarViewModel = viewModelProvider2.actionBarViewModel;
            if (soundCraftActionBarViewModel == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.actionbar.SoundCraftActionBarViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass2, Reflection.getOrCreateKotlinClass(NoiseControlBoxViewModel.class))) {
            BaseViewModel baseViewModel19 = viewModelProvider2.noiseControlBoxViewModel;
            if (baseViewModel19 != null) {
                soundCraftActionBarViewModel = (SoundCraftActionBarViewModel) baseViewModel19;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.actionbar.SoundCraftActionBarViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass2, Reflection.getOrCreateKotlinClass(AudioEffectBoxViewModel.class))) {
            BaseViewModel baseViewModel20 = viewModelProvider2.audioEffectBoxViewModel;
            if (baseViewModel20 != null) {
                soundCraftActionBarViewModel = (SoundCraftActionBarViewModel) baseViewModel20;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.actionbar.SoundCraftActionBarViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass2, Reflection.getOrCreateKotlinClass(AudioEffectHeaderViewModel.class))) {
            BaseViewModel baseViewModel21 = viewModelProvider2.audioEffectHeaderViewModel;
            if (baseViewModel21 != null) {
                soundCraftActionBarViewModel = (SoundCraftActionBarViewModel) baseViewModel21;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.actionbar.SoundCraftActionBarViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass2, Reflection.getOrCreateKotlinClass(WearableLinkBoxViewModel.class))) {
            BaseViewModel baseViewModel22 = viewModelProvider2.wearableLinkBoxViewModel;
            if (baseViewModel22 != null) {
                soundCraftActionBarViewModel = (SoundCraftActionBarViewModel) baseViewModel22;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.actionbar.SoundCraftActionBarViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass2, Reflection.getOrCreateKotlinClass(SpatialAudioViewModel.class))) {
            BaseViewModel baseViewModel23 = viewModelProvider2.spatialAudioViewModel;
            if (baseViewModel23 != null) {
                soundCraftActionBarViewModel = (SoundCraftActionBarViewModel) baseViewModel23;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.actionbar.SoundCraftActionBarViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass2, Reflection.getOrCreateKotlinClass(EqualizerViewModel.class))) {
            BaseViewModel baseViewModel24 = viewModelProvider2.equalizerViewModel;
            if (baseViewModel24 != null) {
                soundCraftActionBarViewModel = (SoundCraftActionBarViewModel) baseViewModel24;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.actionbar.SoundCraftActionBarViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass2, Reflection.getOrCreateKotlinClass(VoiceBoostViewModel.class))) {
            BaseViewModel baseViewModel25 = viewModelProvider2.voiceBoostViewModel;
            if (baseViewModel25 != null) {
                soundCraftActionBarViewModel = (SoundCraftActionBarViewModel) baseViewModel25;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.actionbar.SoundCraftActionBarViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass2, Reflection.getOrCreateKotlinClass(VolumeNormalizationViewModel.class))) {
            BaseViewModel baseViewModel26 = viewModelProvider2.volumeNormalizationViewModel;
            if (baseViewModel26 != null) {
                soundCraftActionBarViewModel = (SoundCraftActionBarViewModel) baseViewModel26;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.actionbar.SoundCraftActionBarViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass2, Reflection.getOrCreateKotlinClass(ActiveNoiseCancelingViewModel.class))) {
            BaseViewModel baseViewModel27 = viewModelProvider2.activeNoiseCancelingViewModel;
            if (baseViewModel27 != null) {
                soundCraftActionBarViewModel = (SoundCraftActionBarViewModel) baseViewModel27;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.actionbar.SoundCraftActionBarViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass2, Reflection.getOrCreateKotlinClass(AdaptiveViewModel.class))) {
            BaseViewModel baseViewModel28 = viewModelProvider2.adaptiveViewModel;
            if (baseViewModel28 != null) {
                soundCraftActionBarViewModel = (SoundCraftActionBarViewModel) baseViewModel28;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.actionbar.SoundCraftActionBarViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass2, Reflection.getOrCreateKotlinClass(AmbientSoundViewModel.class))) {
            BaseViewModel baseViewModel29 = viewModelProvider2.ambientSoundViewModel;
            if (baseViewModel29 != null) {
                soundCraftActionBarViewModel = (SoundCraftActionBarViewModel) baseViewModel29;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.actionbar.SoundCraftActionBarViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass2, Reflection.getOrCreateKotlinClass(NoiseCancelingLevelViewModel.class))) {
            BaseViewModel baseViewModel30 = viewModelProvider2.noiseCancelingViewModel;
            if (baseViewModel30 != null) {
                soundCraftActionBarViewModel = (SoundCraftActionBarViewModel) baseViewModel30;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.actionbar.SoundCraftActionBarViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass2, Reflection.getOrCreateKotlinClass(NoiseControlEffectBoxViewModel.class))) {
            BaseViewModel baseViewModel31 = viewModelProvider2.noiseControlEffectBoxViewModel;
            if (baseViewModel31 != null) {
                soundCraftActionBarViewModel = (SoundCraftActionBarViewModel) baseViewModel31;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.actionbar.SoundCraftActionBarViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass2, Reflection.getOrCreateKotlinClass(NoiseControlOffViewModel.class))) {
            BaseViewModel baseViewModel32 = viewModelProvider2.noiseControlOffViewModel;
            if (baseViewModel32 != null) {
                soundCraftActionBarViewModel = (SoundCraftActionBarViewModel) baseViewModel32;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.actionbar.SoundCraftActionBarViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass2, Reflection.getOrCreateKotlinClass(NoiseCancelingSwitchBarViewModel.class))) {
            BaseViewModel baseViewModel33 = viewModelProvider2.noiseCancelingSwitchBarViewModel;
            if (baseViewModel33 != null) {
                soundCraftActionBarViewModel = (SoundCraftActionBarViewModel) baseViewModel33;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.actionbar.SoundCraftActionBarViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass2, Reflection.getOrCreateKotlinClass(RoutineTestViewModel.class))) {
            BaseViewModel baseViewModel34 = viewModelProvider2.routineTestViewModel;
            if (baseViewModel34 != null) {
                soundCraftActionBarViewModel = (SoundCraftActionBarViewModel) baseViewModel34;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.actionbar.SoundCraftActionBarViewModel");
            }
        } else {
            throw new RuntimeException();
        }
        soundCraftActionBarView.viewModel = soundCraftActionBarViewModel;
        ((MutableLiveData) soundCraftActionBarViewModel.title$delegate.getValue()).observe(soundCraftActionBarView, new Observer() { // from class: com.android.systemui.qs.bar.soundcraft.view.actionbar.SoundCraftActionBarView$bindViewModel$1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                String str = (String) obj;
                SoundCraftActionBarBinding soundCraftActionBarBinding2 = SoundCraftActionBarView.this.viewBinding;
                if (soundCraftActionBarBinding2 == null) {
                    soundCraftActionBarBinding2 = null;
                }
                soundCraftActionBarBinding2.title.setText(str);
            }
        });
        SoundCraftActionBarBinding soundCraftActionBarBinding2 = soundCraftActionBarView.viewBinding;
        if (soundCraftActionBarBinding2 == null) {
            soundCraftActionBarBinding2 = null;
        }
        soundCraftActionBarBinding2.backButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qs.bar.soundcraft.view.actionbar.SoundCraftActionBarView$bindViewModel$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SoundCraftActionBarViewModel soundCraftActionBarViewModel2 = SoundCraftActionBarView.this.viewModel;
                if (soundCraftActionBarViewModel2 == null) {
                    soundCraftActionBarViewModel2 = null;
                }
                soundCraftActionBarViewModel2.getClass();
                Log.d("SoundCraft.SoundCraftActionBarViewModel", "onBackButtonClick");
                SecQSPanelController secQSPanelController = (SecQSPanelController) soundCraftActionBarViewModel2.qsPanelControllerLazy.get();
                DetailAdapter detailAdapter = (DetailAdapter) soundCraftActionBarViewModel2.soundCraftAdapter.get();
                SecQSPanelControllerBase.Record record = secQSPanelController.mDetailRecord;
                if (record != null && record.mDetailAdapter == detailAdapter) {
                    secQSPanelController.showDetail(record, false);
                }
            }
        });
        SoundCraftActionBarViewModel soundCraftActionBarViewModel2 = soundCraftActionBarView.viewModel;
        if (soundCraftActionBarViewModel2 == null) {
            soundCraftActionBarViewModel2 = null;
        }
        soundCraftActionBarViewModel2.notifyChange();
        NoiseControlBoxViewBinding noiseControlBoxViewBinding = soundCraftViewBinding.noiseControlBox;
        NoiseControlBoxView noiseControlBoxView = noiseControlBoxViewBinding.root;
        noiseControlBoxView.viewBinding = noiseControlBoxViewBinding;
        noiseControlBoxView.bindViewModel(getViewModelProvider());
        AudioEffectBoxViewBinding audioEffectBoxViewBinding = soundCraftViewBinding.audioEffectBox;
        final AudioEffectBoxView audioEffectBoxView = audioEffectBoxViewBinding.root;
        audioEffectBoxView.viewBinding = audioEffectBoxViewBinding;
        final SoundCraftViewModelProvider viewModelProvider3 = getViewModelProvider();
        Log.d("SoundCraft.AudioEffectBoxView", "bindViewModel");
        audioEffectBoxView.vmProvider = viewModelProvider3;
        ClassReference orCreateKotlinClass3 = Reflection.getOrCreateKotlinClass(AudioEffectBoxViewModel.class);
        if (Intrinsics.areEqual(orCreateKotlinClass3, Reflection.getOrCreateKotlinClass(SoundCraftViewModel.class))) {
            BaseViewModel baseViewModel35 = viewModelProvider3.craftViewModel;
            if (baseViewModel35 != null) {
                audioEffectBoxViewModel = (AudioEffectBoxViewModel) baseViewModel35;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass3, Reflection.getOrCreateKotlinClass(SoundCraftActionBarViewModel.class))) {
            BaseViewModel baseViewModel36 = viewModelProvider3.actionBarViewModel;
            if (baseViewModel36 != null) {
                audioEffectBoxViewModel = (AudioEffectBoxViewModel) baseViewModel36;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass3, Reflection.getOrCreateKotlinClass(NoiseControlBoxViewModel.class))) {
            BaseViewModel baseViewModel37 = viewModelProvider3.noiseControlBoxViewModel;
            if (baseViewModel37 != null) {
                audioEffectBoxViewModel = (AudioEffectBoxViewModel) baseViewModel37;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass3, Reflection.getOrCreateKotlinClass(AudioEffectBoxViewModel.class))) {
            audioEffectBoxViewModel = viewModelProvider3.audioEffectBoxViewModel;
            if (audioEffectBoxViewModel == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass3, Reflection.getOrCreateKotlinClass(AudioEffectHeaderViewModel.class))) {
            BaseViewModel baseViewModel38 = viewModelProvider3.audioEffectHeaderViewModel;
            if (baseViewModel38 != null) {
                audioEffectBoxViewModel = (AudioEffectBoxViewModel) baseViewModel38;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass3, Reflection.getOrCreateKotlinClass(WearableLinkBoxViewModel.class))) {
            BaseViewModel baseViewModel39 = viewModelProvider3.wearableLinkBoxViewModel;
            if (baseViewModel39 != null) {
                audioEffectBoxViewModel = (AudioEffectBoxViewModel) baseViewModel39;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass3, Reflection.getOrCreateKotlinClass(SpatialAudioViewModel.class))) {
            BaseViewModel baseViewModel40 = viewModelProvider3.spatialAudioViewModel;
            if (baseViewModel40 != null) {
                audioEffectBoxViewModel = (AudioEffectBoxViewModel) baseViewModel40;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass3, Reflection.getOrCreateKotlinClass(EqualizerViewModel.class))) {
            BaseViewModel baseViewModel41 = viewModelProvider3.equalizerViewModel;
            if (baseViewModel41 != null) {
                audioEffectBoxViewModel = (AudioEffectBoxViewModel) baseViewModel41;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass3, Reflection.getOrCreateKotlinClass(VoiceBoostViewModel.class))) {
            BaseViewModel baseViewModel42 = viewModelProvider3.voiceBoostViewModel;
            if (baseViewModel42 != null) {
                audioEffectBoxViewModel = (AudioEffectBoxViewModel) baseViewModel42;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass3, Reflection.getOrCreateKotlinClass(VolumeNormalizationViewModel.class))) {
            BaseViewModel baseViewModel43 = viewModelProvider3.volumeNormalizationViewModel;
            if (baseViewModel43 != null) {
                audioEffectBoxViewModel = (AudioEffectBoxViewModel) baseViewModel43;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass3, Reflection.getOrCreateKotlinClass(ActiveNoiseCancelingViewModel.class))) {
            BaseViewModel baseViewModel44 = viewModelProvider3.activeNoiseCancelingViewModel;
            if (baseViewModel44 != null) {
                audioEffectBoxViewModel = (AudioEffectBoxViewModel) baseViewModel44;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass3, Reflection.getOrCreateKotlinClass(AdaptiveViewModel.class))) {
            BaseViewModel baseViewModel45 = viewModelProvider3.adaptiveViewModel;
            if (baseViewModel45 != null) {
                audioEffectBoxViewModel = (AudioEffectBoxViewModel) baseViewModel45;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass3, Reflection.getOrCreateKotlinClass(AmbientSoundViewModel.class))) {
            BaseViewModel baseViewModel46 = viewModelProvider3.ambientSoundViewModel;
            if (baseViewModel46 != null) {
                audioEffectBoxViewModel = (AudioEffectBoxViewModel) baseViewModel46;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass3, Reflection.getOrCreateKotlinClass(NoiseCancelingLevelViewModel.class))) {
            BaseViewModel baseViewModel47 = viewModelProvider3.noiseCancelingViewModel;
            if (baseViewModel47 != null) {
                audioEffectBoxViewModel = (AudioEffectBoxViewModel) baseViewModel47;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass3, Reflection.getOrCreateKotlinClass(NoiseControlEffectBoxViewModel.class))) {
            BaseViewModel baseViewModel48 = viewModelProvider3.noiseControlEffectBoxViewModel;
            if (baseViewModel48 != null) {
                audioEffectBoxViewModel = (AudioEffectBoxViewModel) baseViewModel48;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass3, Reflection.getOrCreateKotlinClass(NoiseControlOffViewModel.class))) {
            BaseViewModel baseViewModel49 = viewModelProvider3.noiseControlOffViewModel;
            if (baseViewModel49 != null) {
                audioEffectBoxViewModel = (AudioEffectBoxViewModel) baseViewModel49;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass3, Reflection.getOrCreateKotlinClass(NoiseCancelingSwitchBarViewModel.class))) {
            BaseViewModel baseViewModel50 = viewModelProvider3.noiseCancelingSwitchBarViewModel;
            if (baseViewModel50 != null) {
                audioEffectBoxViewModel = (AudioEffectBoxViewModel) baseViewModel50;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass3, Reflection.getOrCreateKotlinClass(RoutineTestViewModel.class))) {
            BaseViewModel baseViewModel51 = viewModelProvider3.routineTestViewModel;
            if (baseViewModel51 != null) {
                audioEffectBoxViewModel = (AudioEffectBoxViewModel) baseViewModel51;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectBoxViewModel");
            }
        } else {
            throw new RuntimeException();
        }
        audioEffectBoxViewModel.showSpatialAudio.observe(audioEffectBoxView, new Observer() { // from class: com.android.systemui.qs.bar.soundcraft.view.audioeffect.AudioEffectBoxView$bindViewModel$1$1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                AudioEffectHeaderViewModel audioEffectHeaderViewModel2;
                ClassReference orCreateKotlinClass4 = Reflection.getOrCreateKotlinClass(AudioEffectHeaderViewModel.class);
                boolean areEqual = Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(SoundCraftViewModel.class));
                SoundCraftViewModelProvider soundCraftViewModelProvider = SoundCraftViewModelProvider.this;
                if (areEqual) {
                    BaseViewModel baseViewModel52 = soundCraftViewModelProvider.craftViewModel;
                    if (baseViewModel52 != null) {
                        audioEffectHeaderViewModel2 = (AudioEffectHeaderViewModel) baseViewModel52;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
                    }
                } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(SoundCraftActionBarViewModel.class))) {
                    BaseViewModel baseViewModel53 = soundCraftViewModelProvider.actionBarViewModel;
                    if (baseViewModel53 != null) {
                        audioEffectHeaderViewModel2 = (AudioEffectHeaderViewModel) baseViewModel53;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
                    }
                } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(NoiseControlBoxViewModel.class))) {
                    BaseViewModel baseViewModel54 = soundCraftViewModelProvider.noiseControlBoxViewModel;
                    if (baseViewModel54 != null) {
                        audioEffectHeaderViewModel2 = (AudioEffectHeaderViewModel) baseViewModel54;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
                    }
                } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(AudioEffectBoxViewModel.class))) {
                    BaseViewModel baseViewModel55 = soundCraftViewModelProvider.audioEffectBoxViewModel;
                    if (baseViewModel55 != null) {
                        audioEffectHeaderViewModel2 = (AudioEffectHeaderViewModel) baseViewModel55;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
                    }
                } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(AudioEffectHeaderViewModel.class))) {
                    audioEffectHeaderViewModel2 = soundCraftViewModelProvider.audioEffectHeaderViewModel;
                    if (audioEffectHeaderViewModel2 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
                    }
                } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(WearableLinkBoxViewModel.class))) {
                    BaseViewModel baseViewModel56 = soundCraftViewModelProvider.wearableLinkBoxViewModel;
                    if (baseViewModel56 != null) {
                        audioEffectHeaderViewModel2 = (AudioEffectHeaderViewModel) baseViewModel56;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
                    }
                } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(SpatialAudioViewModel.class))) {
                    BaseViewModel baseViewModel57 = soundCraftViewModelProvider.spatialAudioViewModel;
                    if (baseViewModel57 != null) {
                        audioEffectHeaderViewModel2 = (AudioEffectHeaderViewModel) baseViewModel57;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
                    }
                } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(EqualizerViewModel.class))) {
                    BaseViewModel baseViewModel58 = soundCraftViewModelProvider.equalizerViewModel;
                    if (baseViewModel58 != null) {
                        audioEffectHeaderViewModel2 = (AudioEffectHeaderViewModel) baseViewModel58;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
                    }
                } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(VoiceBoostViewModel.class))) {
                    BaseViewModel baseViewModel59 = soundCraftViewModelProvider.voiceBoostViewModel;
                    if (baseViewModel59 != null) {
                        audioEffectHeaderViewModel2 = (AudioEffectHeaderViewModel) baseViewModel59;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
                    }
                } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(VolumeNormalizationViewModel.class))) {
                    BaseViewModel baseViewModel60 = soundCraftViewModelProvider.volumeNormalizationViewModel;
                    if (baseViewModel60 != null) {
                        audioEffectHeaderViewModel2 = (AudioEffectHeaderViewModel) baseViewModel60;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
                    }
                } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(ActiveNoiseCancelingViewModel.class))) {
                    BaseViewModel baseViewModel61 = soundCraftViewModelProvider.activeNoiseCancelingViewModel;
                    if (baseViewModel61 != null) {
                        audioEffectHeaderViewModel2 = (AudioEffectHeaderViewModel) baseViewModel61;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
                    }
                } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(AdaptiveViewModel.class))) {
                    BaseViewModel baseViewModel62 = soundCraftViewModelProvider.adaptiveViewModel;
                    if (baseViewModel62 != null) {
                        audioEffectHeaderViewModel2 = (AudioEffectHeaderViewModel) baseViewModel62;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
                    }
                } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(AmbientSoundViewModel.class))) {
                    BaseViewModel baseViewModel63 = soundCraftViewModelProvider.ambientSoundViewModel;
                    if (baseViewModel63 != null) {
                        audioEffectHeaderViewModel2 = (AudioEffectHeaderViewModel) baseViewModel63;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
                    }
                } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(NoiseCancelingLevelViewModel.class))) {
                    BaseViewModel baseViewModel64 = soundCraftViewModelProvider.noiseCancelingViewModel;
                    if (baseViewModel64 != null) {
                        audioEffectHeaderViewModel2 = (AudioEffectHeaderViewModel) baseViewModel64;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
                    }
                } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(NoiseControlEffectBoxViewModel.class))) {
                    BaseViewModel baseViewModel65 = soundCraftViewModelProvider.noiseControlEffectBoxViewModel;
                    if (baseViewModel65 != null) {
                        audioEffectHeaderViewModel2 = (AudioEffectHeaderViewModel) baseViewModel65;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
                    }
                } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(NoiseControlOffViewModel.class))) {
                    BaseViewModel baseViewModel66 = soundCraftViewModelProvider.noiseControlOffViewModel;
                    if (baseViewModel66 != null) {
                        audioEffectHeaderViewModel2 = (AudioEffectHeaderViewModel) baseViewModel66;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
                    }
                } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(NoiseCancelingSwitchBarViewModel.class))) {
                    BaseViewModel baseViewModel67 = soundCraftViewModelProvider.noiseCancelingSwitchBarViewModel;
                    if (baseViewModel67 != null) {
                        audioEffectHeaderViewModel2 = (AudioEffectHeaderViewModel) baseViewModel67;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
                    }
                } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(RoutineTestViewModel.class))) {
                    BaseViewModel baseViewModel68 = soundCraftViewModelProvider.routineTestViewModel;
                    if (baseViewModel68 != null) {
                        audioEffectHeaderViewModel2 = (AudioEffectHeaderViewModel) baseViewModel68;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
                    }
                } else {
                    throw new RuntimeException();
                }
                audioEffectHeaderViewModel2.notifyChange();
                BaseAudioEffectItemView baseAudioEffectItemView = audioEffectBoxView.spatialAudioView;
                if (baseAudioEffectItemView != null) {
                    baseAudioEffectItemView.update();
                }
            }
        });
        audioEffectBoxViewModel.showEqualizer.observe(audioEffectBoxView, new Observer() { // from class: com.android.systemui.qs.bar.soundcraft.view.audioeffect.AudioEffectBoxView$bindViewModel$1$2
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BaseAudioEffectItemView baseAudioEffectItemView = AudioEffectBoxView.this.equalizerView;
                if (baseAudioEffectItemView != null) {
                    baseAudioEffectItemView.update();
                }
            }
        });
        audioEffectBoxViewModel.showVoiceBoost.observe(audioEffectBoxView, new Observer() { // from class: com.android.systemui.qs.bar.soundcraft.view.audioeffect.AudioEffectBoxView$bindViewModel$1$3
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BaseAudioEffectItemView baseAudioEffectItemView = AudioEffectBoxView.this.voiceBoostView;
                if (baseAudioEffectItemView != null) {
                    baseAudioEffectItemView.update();
                }
            }
        });
        audioEffectBoxViewModel.showVolumeNormalization.observe(audioEffectBoxView, new Observer() { // from class: com.android.systemui.qs.bar.soundcraft.view.audioeffect.AudioEffectBoxView$bindViewModel$1$4
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BaseAudioEffectItemView baseAudioEffectItemView = AudioEffectBoxView.this.volumeNormalizationView;
                if (baseAudioEffectItemView != null) {
                    baseAudioEffectItemView.update();
                }
            }
        });
        AudioEffectHeaderViewBinding audioEffectHeaderViewBinding = audioEffectBoxViewBinding.header;
        final AudioEffectHeaderView audioEffectHeaderView = audioEffectHeaderViewBinding.root;
        audioEffectHeaderView.viewBinding = audioEffectHeaderViewBinding;
        SoundCraftViewModelProvider viewModelProvider4 = getViewModelProvider();
        ClassReference orCreateKotlinClass4 = Reflection.getOrCreateKotlinClass(AudioEffectHeaderViewModel.class);
        if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(SoundCraftViewModel.class))) {
            BaseViewModel baseViewModel52 = viewModelProvider4.craftViewModel;
            if (baseViewModel52 != null) {
                audioEffectHeaderViewModel = (AudioEffectHeaderViewModel) baseViewModel52;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(SoundCraftActionBarViewModel.class))) {
            BaseViewModel baseViewModel53 = viewModelProvider4.actionBarViewModel;
            if (baseViewModel53 != null) {
                audioEffectHeaderViewModel = (AudioEffectHeaderViewModel) baseViewModel53;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(NoiseControlBoxViewModel.class))) {
            BaseViewModel baseViewModel54 = viewModelProvider4.noiseControlBoxViewModel;
            if (baseViewModel54 != null) {
                audioEffectHeaderViewModel = (AudioEffectHeaderViewModel) baseViewModel54;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(AudioEffectBoxViewModel.class))) {
            BaseViewModel baseViewModel55 = viewModelProvider4.audioEffectBoxViewModel;
            if (baseViewModel55 != null) {
                audioEffectHeaderViewModel = (AudioEffectHeaderViewModel) baseViewModel55;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(AudioEffectHeaderViewModel.class))) {
            audioEffectHeaderViewModel = viewModelProvider4.audioEffectHeaderViewModel;
            if (audioEffectHeaderViewModel == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(WearableLinkBoxViewModel.class))) {
            BaseViewModel baseViewModel56 = viewModelProvider4.wearableLinkBoxViewModel;
            if (baseViewModel56 != null) {
                audioEffectHeaderViewModel = (AudioEffectHeaderViewModel) baseViewModel56;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(SpatialAudioViewModel.class))) {
            BaseViewModel baseViewModel57 = viewModelProvider4.spatialAudioViewModel;
            if (baseViewModel57 != null) {
                audioEffectHeaderViewModel = (AudioEffectHeaderViewModel) baseViewModel57;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(EqualizerViewModel.class))) {
            BaseViewModel baseViewModel58 = viewModelProvider4.equalizerViewModel;
            if (baseViewModel58 != null) {
                audioEffectHeaderViewModel = (AudioEffectHeaderViewModel) baseViewModel58;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(VoiceBoostViewModel.class))) {
            BaseViewModel baseViewModel59 = viewModelProvider4.voiceBoostViewModel;
            if (baseViewModel59 != null) {
                audioEffectHeaderViewModel = (AudioEffectHeaderViewModel) baseViewModel59;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(VolumeNormalizationViewModel.class))) {
            BaseViewModel baseViewModel60 = viewModelProvider4.volumeNormalizationViewModel;
            if (baseViewModel60 != null) {
                audioEffectHeaderViewModel = (AudioEffectHeaderViewModel) baseViewModel60;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(ActiveNoiseCancelingViewModel.class))) {
            BaseViewModel baseViewModel61 = viewModelProvider4.activeNoiseCancelingViewModel;
            if (baseViewModel61 != null) {
                audioEffectHeaderViewModel = (AudioEffectHeaderViewModel) baseViewModel61;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(AdaptiveViewModel.class))) {
            BaseViewModel baseViewModel62 = viewModelProvider4.adaptiveViewModel;
            if (baseViewModel62 != null) {
                audioEffectHeaderViewModel = (AudioEffectHeaderViewModel) baseViewModel62;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(AmbientSoundViewModel.class))) {
            BaseViewModel baseViewModel63 = viewModelProvider4.ambientSoundViewModel;
            if (baseViewModel63 != null) {
                audioEffectHeaderViewModel = (AudioEffectHeaderViewModel) baseViewModel63;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(NoiseCancelingLevelViewModel.class))) {
            BaseViewModel baseViewModel64 = viewModelProvider4.noiseCancelingViewModel;
            if (baseViewModel64 != null) {
                audioEffectHeaderViewModel = (AudioEffectHeaderViewModel) baseViewModel64;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(NoiseControlEffectBoxViewModel.class))) {
            BaseViewModel baseViewModel65 = viewModelProvider4.noiseControlEffectBoxViewModel;
            if (baseViewModel65 != null) {
                audioEffectHeaderViewModel = (AudioEffectHeaderViewModel) baseViewModel65;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(NoiseControlOffViewModel.class))) {
            BaseViewModel baseViewModel66 = viewModelProvider4.noiseControlOffViewModel;
            if (baseViewModel66 != null) {
                audioEffectHeaderViewModel = (AudioEffectHeaderViewModel) baseViewModel66;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(NoiseCancelingSwitchBarViewModel.class))) {
            BaseViewModel baseViewModel67 = viewModelProvider4.noiseCancelingSwitchBarViewModel;
            if (baseViewModel67 != null) {
                audioEffectHeaderViewModel = (AudioEffectHeaderViewModel) baseViewModel67;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass4, Reflection.getOrCreateKotlinClass(RoutineTestViewModel.class))) {
            BaseViewModel baseViewModel68 = viewModelProvider4.routineTestViewModel;
            if (baseViewModel68 != null) {
                audioEffectHeaderViewModel = (AudioEffectHeaderViewModel) baseViewModel68;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel");
            }
        } else {
            throw new RuntimeException();
        }
        audioEffectHeaderView.viewModel = audioEffectHeaderViewModel;
        audioEffectHeaderViewModel.title.observe(audioEffectHeaderView, new Observer() { // from class: com.android.systemui.qs.bar.soundcraft.view.audioeffect.AudioEffectHeaderView$bindViewModel$1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                String str = (String) obj;
                MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("update title : ", str, "SoundCraft.AudioEffectHeaderView");
                AudioEffectHeaderViewBinding audioEffectHeaderViewBinding2 = AudioEffectHeaderView.this.viewBinding;
                if (audioEffectHeaderViewBinding2 == null) {
                    audioEffectHeaderViewBinding2 = null;
                }
                audioEffectHeaderViewBinding2.title.setText(str);
            }
        });
        AudioEffectHeaderViewModel audioEffectHeaderViewModel2 = audioEffectHeaderView.viewModel;
        if (audioEffectHeaderViewModel2 == null) {
            audioEffectHeaderViewModel2 = null;
        }
        audioEffectHeaderViewModel2.icon.observe(audioEffectHeaderView, new Observer() { // from class: com.android.systemui.qs.bar.soundcraft.view.audioeffect.AudioEffectHeaderView$bindViewModel$2
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Drawable drawable = (Drawable) obj;
                Log.d("SoundCraft.AudioEffectHeaderView", "update icon : " + drawable);
                AudioEffectHeaderView audioEffectHeaderView2 = AudioEffectHeaderView.this;
                AudioEffectHeaderViewBinding audioEffectHeaderViewBinding2 = audioEffectHeaderView2.viewBinding;
                AudioEffectHeaderViewBinding audioEffectHeaderViewBinding3 = null;
                if (audioEffectHeaderViewBinding2 == null) {
                    audioEffectHeaderViewBinding2 = null;
                }
                audioEffectHeaderViewBinding2.icon.setImageDrawable(drawable);
                if (drawable != null) {
                    ViewVisibilityUtil viewVisibilityUtil = ViewVisibilityUtil.INSTANCE;
                    AudioEffectHeaderViewBinding audioEffectHeaderViewBinding4 = audioEffectHeaderView2.viewBinding;
                    if (audioEffectHeaderViewBinding4 != null) {
                        audioEffectHeaderViewBinding3 = audioEffectHeaderViewBinding4;
                    }
                    ImageView imageView = audioEffectHeaderViewBinding3.icon;
                    viewVisibilityUtil.getClass();
                    imageView.setVisibility(0);
                    return;
                }
                ViewVisibilityUtil viewVisibilityUtil2 = ViewVisibilityUtil.INSTANCE;
                AudioEffectHeaderViewBinding audioEffectHeaderViewBinding5 = audioEffectHeaderView2.viewBinding;
                if (audioEffectHeaderViewBinding5 != null) {
                    audioEffectHeaderViewBinding3 = audioEffectHeaderViewBinding5;
                }
                ImageView imageView2 = audioEffectHeaderViewBinding3.icon;
                viewVisibilityUtil2.getClass();
                ViewVisibilityUtil.setGone(imageView2);
            }
        });
        AudioEffectHeaderViewModel audioEffectHeaderViewModel3 = audioEffectHeaderView.viewModel;
        if (audioEffectHeaderViewModel3 == null) {
            audioEffectHeaderViewModel3 = null;
        }
        audioEffectHeaderViewModel3.notifyChange();
        WearableLinkBoxViewBinding wearableLinkBoxViewBinding = soundCraftViewBinding.wearableLinkBox;
        final WearableLinkBoxView wearableLinkBoxView = wearableLinkBoxViewBinding.root;
        wearableLinkBoxView.viewBinding = wearableLinkBoxViewBinding;
        SoundCraftViewModelProvider viewModelProvider5 = getViewModelProvider();
        Log.d("SoundCraft.WearableLinkBoxView", "bindViewModel binding : viewModel=" + viewModelProvider5);
        ClassReference orCreateKotlinClass5 = Reflection.getOrCreateKotlinClass(WearableLinkBoxViewModel.class);
        if (Intrinsics.areEqual(orCreateKotlinClass5, Reflection.getOrCreateKotlinClass(SoundCraftViewModel.class))) {
            BaseViewModel baseViewModel69 = viewModelProvider5.craftViewModel;
            if (baseViewModel69 != null) {
                wearableLinkBoxViewModel = (WearableLinkBoxViewModel) baseViewModel69;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.wearable.WearableLinkBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass5, Reflection.getOrCreateKotlinClass(SoundCraftActionBarViewModel.class))) {
            BaseViewModel baseViewModel70 = viewModelProvider5.actionBarViewModel;
            if (baseViewModel70 != null) {
                wearableLinkBoxViewModel = (WearableLinkBoxViewModel) baseViewModel70;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.wearable.WearableLinkBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass5, Reflection.getOrCreateKotlinClass(NoiseControlBoxViewModel.class))) {
            BaseViewModel baseViewModel71 = viewModelProvider5.noiseControlBoxViewModel;
            if (baseViewModel71 != null) {
                wearableLinkBoxViewModel = (WearableLinkBoxViewModel) baseViewModel71;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.wearable.WearableLinkBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass5, Reflection.getOrCreateKotlinClass(AudioEffectBoxViewModel.class))) {
            BaseViewModel baseViewModel72 = viewModelProvider5.audioEffectBoxViewModel;
            if (baseViewModel72 != null) {
                wearableLinkBoxViewModel = (WearableLinkBoxViewModel) baseViewModel72;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.wearable.WearableLinkBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass5, Reflection.getOrCreateKotlinClass(AudioEffectHeaderViewModel.class))) {
            BaseViewModel baseViewModel73 = viewModelProvider5.audioEffectHeaderViewModel;
            if (baseViewModel73 != null) {
                wearableLinkBoxViewModel = (WearableLinkBoxViewModel) baseViewModel73;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.wearable.WearableLinkBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass5, Reflection.getOrCreateKotlinClass(WearableLinkBoxViewModel.class))) {
            wearableLinkBoxViewModel = viewModelProvider5.wearableLinkBoxViewModel;
            if (wearableLinkBoxViewModel == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.wearable.WearableLinkBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass5, Reflection.getOrCreateKotlinClass(SpatialAudioViewModel.class))) {
            BaseViewModel baseViewModel74 = viewModelProvider5.spatialAudioViewModel;
            if (baseViewModel74 != null) {
                wearableLinkBoxViewModel = (WearableLinkBoxViewModel) baseViewModel74;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.wearable.WearableLinkBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass5, Reflection.getOrCreateKotlinClass(EqualizerViewModel.class))) {
            BaseViewModel baseViewModel75 = viewModelProvider5.equalizerViewModel;
            if (baseViewModel75 != null) {
                wearableLinkBoxViewModel = (WearableLinkBoxViewModel) baseViewModel75;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.wearable.WearableLinkBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass5, Reflection.getOrCreateKotlinClass(VoiceBoostViewModel.class))) {
            BaseViewModel baseViewModel76 = viewModelProvider5.voiceBoostViewModel;
            if (baseViewModel76 != null) {
                wearableLinkBoxViewModel = (WearableLinkBoxViewModel) baseViewModel76;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.wearable.WearableLinkBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass5, Reflection.getOrCreateKotlinClass(VolumeNormalizationViewModel.class))) {
            BaseViewModel baseViewModel77 = viewModelProvider5.volumeNormalizationViewModel;
            if (baseViewModel77 != null) {
                wearableLinkBoxViewModel = (WearableLinkBoxViewModel) baseViewModel77;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.wearable.WearableLinkBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass5, Reflection.getOrCreateKotlinClass(ActiveNoiseCancelingViewModel.class))) {
            BaseViewModel baseViewModel78 = viewModelProvider5.activeNoiseCancelingViewModel;
            if (baseViewModel78 != null) {
                wearableLinkBoxViewModel = (WearableLinkBoxViewModel) baseViewModel78;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.wearable.WearableLinkBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass5, Reflection.getOrCreateKotlinClass(AdaptiveViewModel.class))) {
            BaseViewModel baseViewModel79 = viewModelProvider5.adaptiveViewModel;
            if (baseViewModel79 != null) {
                wearableLinkBoxViewModel = (WearableLinkBoxViewModel) baseViewModel79;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.wearable.WearableLinkBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass5, Reflection.getOrCreateKotlinClass(AmbientSoundViewModel.class))) {
            BaseViewModel baseViewModel80 = viewModelProvider5.ambientSoundViewModel;
            if (baseViewModel80 != null) {
                wearableLinkBoxViewModel = (WearableLinkBoxViewModel) baseViewModel80;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.wearable.WearableLinkBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass5, Reflection.getOrCreateKotlinClass(NoiseCancelingLevelViewModel.class))) {
            BaseViewModel baseViewModel81 = viewModelProvider5.noiseCancelingViewModel;
            if (baseViewModel81 != null) {
                wearableLinkBoxViewModel = (WearableLinkBoxViewModel) baseViewModel81;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.wearable.WearableLinkBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass5, Reflection.getOrCreateKotlinClass(NoiseControlEffectBoxViewModel.class))) {
            BaseViewModel baseViewModel82 = viewModelProvider5.noiseControlEffectBoxViewModel;
            if (baseViewModel82 != null) {
                wearableLinkBoxViewModel = (WearableLinkBoxViewModel) baseViewModel82;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.wearable.WearableLinkBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass5, Reflection.getOrCreateKotlinClass(NoiseControlOffViewModel.class))) {
            BaseViewModel baseViewModel83 = viewModelProvider5.noiseControlOffViewModel;
            if (baseViewModel83 != null) {
                wearableLinkBoxViewModel = (WearableLinkBoxViewModel) baseViewModel83;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.wearable.WearableLinkBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass5, Reflection.getOrCreateKotlinClass(NoiseCancelingSwitchBarViewModel.class))) {
            BaseViewModel baseViewModel84 = viewModelProvider5.noiseCancelingSwitchBarViewModel;
            if (baseViewModel84 != null) {
                wearableLinkBoxViewModel = (WearableLinkBoxViewModel) baseViewModel84;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.wearable.WearableLinkBoxViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass5, Reflection.getOrCreateKotlinClass(RoutineTestViewModel.class))) {
            BaseViewModel baseViewModel85 = viewModelProvider5.routineTestViewModel;
            if (baseViewModel85 != null) {
                wearableLinkBoxViewModel = (WearableLinkBoxViewModel) baseViewModel85;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.wearable.WearableLinkBoxViewModel");
            }
        } else {
            throw new RuntimeException();
        }
        wearableLinkBoxView.viewModel = wearableLinkBoxViewModel;
        WearableLinkBoxViewBinding wearableLinkBoxViewBinding2 = wearableLinkBoxView.viewBinding;
        if (wearableLinkBoxViewBinding2 == null) {
            wearableLinkBoxViewBinding2 = null;
        }
        wearableLinkBoxViewBinding2.root.setVisibility(0);
        WearableLinkBoxViewBinding wearableLinkBoxViewBinding3 = wearableLinkBoxView.viewBinding;
        if (wearableLinkBoxViewBinding3 == null) {
            wearableLinkBoxViewBinding3 = null;
        }
        wearableLinkBoxViewBinding3.root.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qs.bar.soundcraft.view.wearable.WearableLinkBoxView$bindViewModel$1
            /* JADX WARN: Code restructure failed: missing block: B:57:0x0169, code lost:
            
                if (r6 != null) goto L48;
             */
            /* JADX WARN: Removed duplicated region for block: B:27:0x0178  */
            /* JADX WARN: Removed duplicated region for block: B:33:0x0194  */
            /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:37:0x018f A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:63:0x01a2  */
            @Override // android.view.View.OnClickListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void onClick(android.view.View r26) {
                /*
                    Method dump skipped, instructions count: 423
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.bar.soundcraft.view.wearable.WearableLinkBoxView$bindViewModel$1.onClick(android.view.View):void");
            }
        });
        RoutineTestViewBinding routineTestViewBinding = soundCraftViewBinding.routineTest;
        if (routineTestViewBinding != null) {
            final RoutineTestView routineTestView = routineTestViewBinding.root;
            routineTestView.viewBinding = routineTestViewBinding;
            SoundCraftViewModelProvider viewModelProvider6 = getViewModelProvider();
            ClassReference orCreateKotlinClass6 = Reflection.getOrCreateKotlinClass(RoutineTestViewModel.class);
            if (Intrinsics.areEqual(orCreateKotlinClass6, Reflection.getOrCreateKotlinClass(SoundCraftViewModel.class))) {
                BaseViewModel baseViewModel86 = viewModelProvider6.craftViewModel;
                if (baseViewModel86 != null) {
                    routineTestViewModel = (RoutineTestViewModel) baseViewModel86;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.routine.RoutineTestViewModel");
                }
            } else if (Intrinsics.areEqual(orCreateKotlinClass6, Reflection.getOrCreateKotlinClass(SoundCraftActionBarViewModel.class))) {
                BaseViewModel baseViewModel87 = viewModelProvider6.actionBarViewModel;
                if (baseViewModel87 != null) {
                    routineTestViewModel = (RoutineTestViewModel) baseViewModel87;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.routine.RoutineTestViewModel");
                }
            } else if (Intrinsics.areEqual(orCreateKotlinClass6, Reflection.getOrCreateKotlinClass(NoiseControlBoxViewModel.class))) {
                BaseViewModel baseViewModel88 = viewModelProvider6.noiseControlBoxViewModel;
                if (baseViewModel88 != null) {
                    routineTestViewModel = (RoutineTestViewModel) baseViewModel88;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.routine.RoutineTestViewModel");
                }
            } else if (Intrinsics.areEqual(orCreateKotlinClass6, Reflection.getOrCreateKotlinClass(AudioEffectBoxViewModel.class))) {
                BaseViewModel baseViewModel89 = viewModelProvider6.audioEffectBoxViewModel;
                if (baseViewModel89 != null) {
                    routineTestViewModel = (RoutineTestViewModel) baseViewModel89;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.routine.RoutineTestViewModel");
                }
            } else if (Intrinsics.areEqual(orCreateKotlinClass6, Reflection.getOrCreateKotlinClass(AudioEffectHeaderViewModel.class))) {
                BaseViewModel baseViewModel90 = viewModelProvider6.audioEffectHeaderViewModel;
                if (baseViewModel90 != null) {
                    routineTestViewModel = (RoutineTestViewModel) baseViewModel90;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.routine.RoutineTestViewModel");
                }
            } else if (Intrinsics.areEqual(orCreateKotlinClass6, Reflection.getOrCreateKotlinClass(WearableLinkBoxViewModel.class))) {
                BaseViewModel baseViewModel91 = viewModelProvider6.wearableLinkBoxViewModel;
                if (baseViewModel91 != null) {
                    routineTestViewModel = (RoutineTestViewModel) baseViewModel91;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.routine.RoutineTestViewModel");
                }
            } else if (Intrinsics.areEqual(orCreateKotlinClass6, Reflection.getOrCreateKotlinClass(SpatialAudioViewModel.class))) {
                BaseViewModel baseViewModel92 = viewModelProvider6.spatialAudioViewModel;
                if (baseViewModel92 != null) {
                    routineTestViewModel = (RoutineTestViewModel) baseViewModel92;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.routine.RoutineTestViewModel");
                }
            } else if (Intrinsics.areEqual(orCreateKotlinClass6, Reflection.getOrCreateKotlinClass(EqualizerViewModel.class))) {
                BaseViewModel baseViewModel93 = viewModelProvider6.equalizerViewModel;
                if (baseViewModel93 != null) {
                    routineTestViewModel = (RoutineTestViewModel) baseViewModel93;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.routine.RoutineTestViewModel");
                }
            } else if (Intrinsics.areEqual(orCreateKotlinClass6, Reflection.getOrCreateKotlinClass(VoiceBoostViewModel.class))) {
                BaseViewModel baseViewModel94 = viewModelProvider6.voiceBoostViewModel;
                if (baseViewModel94 != null) {
                    routineTestViewModel = (RoutineTestViewModel) baseViewModel94;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.routine.RoutineTestViewModel");
                }
            } else if (Intrinsics.areEqual(orCreateKotlinClass6, Reflection.getOrCreateKotlinClass(VolumeNormalizationViewModel.class))) {
                BaseViewModel baseViewModel95 = viewModelProvider6.volumeNormalizationViewModel;
                if (baseViewModel95 != null) {
                    routineTestViewModel = (RoutineTestViewModel) baseViewModel95;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.routine.RoutineTestViewModel");
                }
            } else if (Intrinsics.areEqual(orCreateKotlinClass6, Reflection.getOrCreateKotlinClass(ActiveNoiseCancelingViewModel.class))) {
                BaseViewModel baseViewModel96 = viewModelProvider6.activeNoiseCancelingViewModel;
                if (baseViewModel96 != null) {
                    routineTestViewModel = (RoutineTestViewModel) baseViewModel96;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.routine.RoutineTestViewModel");
                }
            } else if (Intrinsics.areEqual(orCreateKotlinClass6, Reflection.getOrCreateKotlinClass(AdaptiveViewModel.class))) {
                BaseViewModel baseViewModel97 = viewModelProvider6.adaptiveViewModel;
                if (baseViewModel97 != null) {
                    routineTestViewModel = (RoutineTestViewModel) baseViewModel97;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.routine.RoutineTestViewModel");
                }
            } else if (Intrinsics.areEqual(orCreateKotlinClass6, Reflection.getOrCreateKotlinClass(AmbientSoundViewModel.class))) {
                BaseViewModel baseViewModel98 = viewModelProvider6.ambientSoundViewModel;
                if (baseViewModel98 != null) {
                    routineTestViewModel = (RoutineTestViewModel) baseViewModel98;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.routine.RoutineTestViewModel");
                }
            } else if (Intrinsics.areEqual(orCreateKotlinClass6, Reflection.getOrCreateKotlinClass(NoiseCancelingLevelViewModel.class))) {
                BaseViewModel baseViewModel99 = viewModelProvider6.noiseCancelingViewModel;
                if (baseViewModel99 != null) {
                    routineTestViewModel = (RoutineTestViewModel) baseViewModel99;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.routine.RoutineTestViewModel");
                }
            } else if (Intrinsics.areEqual(orCreateKotlinClass6, Reflection.getOrCreateKotlinClass(NoiseControlEffectBoxViewModel.class))) {
                BaseViewModel baseViewModel100 = viewModelProvider6.noiseControlEffectBoxViewModel;
                if (baseViewModel100 != null) {
                    routineTestViewModel = (RoutineTestViewModel) baseViewModel100;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.routine.RoutineTestViewModel");
                }
            } else if (Intrinsics.areEqual(orCreateKotlinClass6, Reflection.getOrCreateKotlinClass(NoiseControlOffViewModel.class))) {
                BaseViewModel baseViewModel101 = viewModelProvider6.noiseControlOffViewModel;
                if (baseViewModel101 != null) {
                    routineTestViewModel = (RoutineTestViewModel) baseViewModel101;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.routine.RoutineTestViewModel");
                }
            } else if (Intrinsics.areEqual(orCreateKotlinClass6, Reflection.getOrCreateKotlinClass(NoiseCancelingSwitchBarViewModel.class))) {
                BaseViewModel baseViewModel102 = viewModelProvider6.noiseCancelingSwitchBarViewModel;
                if (baseViewModel102 != null) {
                    routineTestViewModel = (RoutineTestViewModel) baseViewModel102;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.routine.RoutineTestViewModel");
                }
            } else if (Intrinsics.areEqual(orCreateKotlinClass6, Reflection.getOrCreateKotlinClass(RoutineTestViewModel.class))) {
                routineTestViewModel = viewModelProvider6.routineTestViewModel;
                if (routineTestViewModel == null) {
                    throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.routine.RoutineTestViewModel");
                }
            } else {
                throw new RuntimeException();
            }
            routineTestView.viewModel = routineTestViewModel;
            routineTestViewModel.routineCount.observe(routineTestView, new Observer() { // from class: com.android.systemui.qs.bar.soundcraft.view.routine.RoutineTestView$bindViewModel$1
                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj) {
                    Integer num = (Integer) obj;
                    RoutineTestViewBinding routineTestViewBinding2 = RoutineTestView.this.viewBinding;
                    if (routineTestViewBinding2 == null) {
                        routineTestViewBinding2 = null;
                    }
                    routineTestViewBinding2.routineCountText.setText(String.valueOf(num));
                }
            });
            RoutineTestViewBinding routineTestViewBinding2 = routineTestView.viewBinding;
            if (routineTestViewBinding2 == null) {
                routineTestViewBinding2 = null;
            }
            routineTestViewBinding2.startButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qs.bar.soundcraft.view.routine.RoutineTestView$bindViewModel$2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    final RoutineTestViewModel routineTestViewModel3 = RoutineTestView.this.viewModel;
                    if (routineTestViewModel3 == null) {
                        routineTestViewModel3 = null;
                    }
                    Log.d("SoundCraft.RoutineTestViewModel", "onStartButtonClick : playingAppPackage=" + routineTestViewModel3.audioPlaybackManager.getPlayingAppPackage());
                    new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.android.systemui.qs.bar.soundcraft.viewmodel.routine.RoutineTestViewModel$onStartButtonClick$1
                        @Override // java.lang.Runnable
                        public final void run() {
                            RoutineTestViewModel.this.getClass();
                        }
                    }, 3000L);
                }
            });
            RoutineTestViewBinding routineTestViewBinding3 = routineTestView.viewBinding;
            if (routineTestViewBinding3 == null) {
                routineTestViewBinding3 = null;
            }
            routineTestViewBinding3.updateButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qs.bar.soundcraft.view.routine.RoutineTestView$bindViewModel$3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RoutineTestViewModel routineTestViewModel3 = RoutineTestView.this.viewModel;
                    if (routineTestViewModel3 == null) {
                        routineTestViewModel3 = null;
                    }
                    String playingAppPackage = routineTestViewModel3.audioPlaybackManager.getPlayingAppPackage();
                    if (playingAppPackage != null) {
                        Log.d("SoundCraft.RoutineTestViewModel", "onUpdateButtonClick : playingAppPackage=".concat(playingAppPackage));
                        RoutineManager routineManager = routineTestViewModel3.routineManager;
                        String routineId = routineManager.getRoutineId(playingAppPackage);
                        if (routineId != null) {
                            Log.d("SoundCraft.RoutineTestViewModel", "onUpdateButtonClick : routineId=".concat(routineId));
                            routineManager.updateRoutine(playingAppPackage, routineId, routineTestViewModel3.modelProvider.budsInfo);
                        }
                    }
                }
            });
            RoutineTestViewBinding routineTestViewBinding4 = routineTestView.viewBinding;
            if (routineTestViewBinding4 == null) {
                routineTestViewBinding4 = null;
            }
            routineTestViewBinding4.stopButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qs.bar.soundcraft.view.routine.RoutineTestView$bindViewModel$4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RoutineTestViewModel routineTestViewModel3 = RoutineTestView.this.viewModel;
                    if (routineTestViewModel3 == null) {
                        routineTestViewModel3 = null;
                    }
                    routineTestViewModel3.getClass();
                    Log.d("SoundCraft.RoutineTestViewModel", "onStopButtonClick");
                }
            });
            RoutineTestViewModel routineTestViewModel3 = routineTestView.viewModel;
            if (routineTestViewModel3 != null) {
                routineTestViewModel2 = routineTestViewModel3;
            } else {
                routineTestViewModel2 = null;
            }
            routineTestViewModel2.getClass();
        }
    }

    @Override // com.android.systemui.plugins.qs.DetailAdapter
    public final View createDetailView(Context context, View view, ViewGroup viewGroup) {
        SoundCraftViewModel soundCraftViewModel;
        ViewGroup viewGroup2;
        Log.d("SoundCraft.QpDetailAdapter", "createDetailView :convertView=" + view + ", parent=" + viewGroup + ", viewModelProvider=" + getViewModelProvider());
        if (context == null) {
            return new View(context);
        }
        ViewGroup viewGroup3 = null;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                viewGroup2 = (ViewGroup) parent;
            } else {
                viewGroup2 = null;
            }
            if (viewGroup2 != null) {
                viewGroup2.removeAllViews();
            }
        }
        SoundCraftViewBinding soundCraftViewBinding = this.viewBinding;
        if (soundCraftViewBinding != null) {
            ViewParent parent2 = soundCraftViewBinding.root.getParent();
            if (parent2 instanceof ViewGroup) {
                viewGroup3 = (ViewGroup) parent2;
            }
            if (viewGroup3 != null) {
                viewGroup3.removeAllViews();
            }
        }
        int i = SoundCraftViewBindingFactory.$r8$clinit;
        SoundCraftViewBinding soundCraftViewBinding2 = new SoundCraftViewBinding(LayoutInflater.from(context).inflate(R.layout.soundcraft_layout, viewGroup, false));
        this.viewBinding = soundCraftViewBinding2;
        bindViewModel(soundCraftViewBinding2);
        SoundCraftViewModelProvider viewModelProvider = getViewModelProvider();
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SoundCraftViewModel.class);
        if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(SoundCraftViewModel.class))) {
            soundCraftViewModel = viewModelProvider.craftViewModel;
            if (soundCraftViewModel == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(SoundCraftActionBarViewModel.class))) {
            BaseViewModel baseViewModel = viewModelProvider.actionBarViewModel;
            if (baseViewModel != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(NoiseControlBoxViewModel.class))) {
            BaseViewModel baseViewModel2 = viewModelProvider.noiseControlBoxViewModel;
            if (baseViewModel2 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel2;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(AudioEffectBoxViewModel.class))) {
            BaseViewModel baseViewModel3 = viewModelProvider.audioEffectBoxViewModel;
            if (baseViewModel3 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel3;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(AudioEffectHeaderViewModel.class))) {
            BaseViewModel baseViewModel4 = viewModelProvider.audioEffectHeaderViewModel;
            if (baseViewModel4 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel4;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(WearableLinkBoxViewModel.class))) {
            BaseViewModel baseViewModel5 = viewModelProvider.wearableLinkBoxViewModel;
            if (baseViewModel5 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel5;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(SpatialAudioViewModel.class))) {
            BaseViewModel baseViewModel6 = viewModelProvider.spatialAudioViewModel;
            if (baseViewModel6 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel6;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(EqualizerViewModel.class))) {
            BaseViewModel baseViewModel7 = viewModelProvider.equalizerViewModel;
            if (baseViewModel7 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel7;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(VoiceBoostViewModel.class))) {
            BaseViewModel baseViewModel8 = viewModelProvider.voiceBoostViewModel;
            if (baseViewModel8 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel8;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(VolumeNormalizationViewModel.class))) {
            BaseViewModel baseViewModel9 = viewModelProvider.volumeNormalizationViewModel;
            if (baseViewModel9 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel9;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(ActiveNoiseCancelingViewModel.class))) {
            BaseViewModel baseViewModel10 = viewModelProvider.activeNoiseCancelingViewModel;
            if (baseViewModel10 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel10;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(AdaptiveViewModel.class))) {
            BaseViewModel baseViewModel11 = viewModelProvider.adaptiveViewModel;
            if (baseViewModel11 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel11;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(AmbientSoundViewModel.class))) {
            BaseViewModel baseViewModel12 = viewModelProvider.ambientSoundViewModel;
            if (baseViewModel12 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel12;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(NoiseCancelingLevelViewModel.class))) {
            BaseViewModel baseViewModel13 = viewModelProvider.noiseCancelingViewModel;
            if (baseViewModel13 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel13;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(NoiseControlEffectBoxViewModel.class))) {
            BaseViewModel baseViewModel14 = viewModelProvider.noiseControlEffectBoxViewModel;
            if (baseViewModel14 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel14;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(NoiseControlOffViewModel.class))) {
            BaseViewModel baseViewModel15 = viewModelProvider.noiseControlOffViewModel;
            if (baseViewModel15 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel15;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(NoiseCancelingSwitchBarViewModel.class))) {
            BaseViewModel baseViewModel16 = viewModelProvider.noiseCancelingSwitchBarViewModel;
            if (baseViewModel16 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel16;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else if (Intrinsics.areEqual(orCreateKotlinClass, Reflection.getOrCreateKotlinClass(RoutineTestViewModel.class))) {
            BaseViewModel baseViewModel17 = viewModelProvider.routineTestViewModel;
            if (baseViewModel17 != null) {
                soundCraftViewModel = (SoundCraftViewModel) baseViewModel17;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel");
            }
        } else {
            throw new RuntimeException();
        }
        soundCraftViewModel.onCreateView();
        return soundCraftViewBinding2.root;
    }

    @Override // com.android.systemui.plugins.qs.DetailAdapter
    public final int getMetricsCategory() {
        return 5030;
    }

    public final SoundCraftViewModelProvider getViewModelProvider() {
        SoundCraftViewModelProvider soundCraftViewModelProvider = this.viewModelProvider;
        if (soundCraftViewModelProvider != null) {
            return soundCraftViewModelProvider;
        }
        return null;
    }
}

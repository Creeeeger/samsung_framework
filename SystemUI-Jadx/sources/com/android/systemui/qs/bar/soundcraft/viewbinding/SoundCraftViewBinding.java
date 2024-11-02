package com.android.systemui.qs.bar.soundcraft.viewbinding;

import android.content.Context;
import android.provider.Settings;
import android.view.View;
import android.view.ViewStub;
import com.android.systemui.R;
import com.android.systemui.qs.bar.soundcraft.feature.SoundCraftDebugFeatures;
import com.android.systemui.qs.bar.soundcraft.view.SoundCraftDetailPageView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SoundCraftViewBinding {
    public final SoundCraftActionBarBinding actionBar;
    public final AudioEffectBoxViewBinding audioEffectBox;
    public final NoiseControlBoxViewBinding noiseControlBox;
    public final SoundCraftDetailPageView root;
    public final RoutineTestViewBinding routineTest;
    public final WearableLinkBoxViewBinding wearableLinkBox;

    public SoundCraftViewBinding(View view) {
        RoutineTestViewBinding routineTestViewBinding;
        this.root = (SoundCraftDetailPageView) view.findViewById(R.id.soundcraft_root);
        this.actionBar = new SoundCraftActionBarBinding(view);
        this.noiseControlBox = new NoiseControlBoxViewBinding(view);
        this.audioEffectBox = new AudioEffectBoxViewBinding(view);
        this.wearableLinkBox = new WearableLinkBoxViewBinding(view);
        SoundCraftDebugFeatures soundCraftDebugFeatures = SoundCraftDebugFeatures.INSTANCE;
        Context context = view.getContext();
        soundCraftDebugFeatures.getClass();
        if (Settings.System.getInt(context.getContentResolver(), "audio_soundcraft_debug_routine_view", 0) == 1) {
            routineTestViewBinding = new RoutineTestViewBinding((ViewStub) view.findViewById(R.id.soundcraft_routine_test_stub));
        } else {
            routineTestViewBinding = null;
        }
        this.routineTest = routineTestViewBinding;
    }
}

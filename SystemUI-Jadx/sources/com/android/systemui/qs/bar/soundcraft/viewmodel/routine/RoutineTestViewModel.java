package com.android.systemui.qs.bar.soundcraft.viewmodel.routine;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import com.android.systemui.qs.bar.soundcraft.interfaces.audio.AudioPlaybackManager;
import com.android.systemui.qs.bar.soundcraft.interfaces.routine.manager.RoutineManager;
import com.android.systemui.qs.bar.soundcraft.model.ModelProvider;
import com.android.systemui.qs.bar.soundcraft.viewmodel.base.BaseViewModel;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class RoutineTestViewModel extends BaseViewModel {
    public final AudioPlaybackManager audioPlaybackManager;
    public final ModelProvider modelProvider;
    public final MutableLiveData routineCount = new MutableLiveData(0);
    public final RoutineManager routineManager;

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

    public RoutineTestViewModel(Context context, RoutineManager routineManager, ModelProvider modelProvider, AudioPlaybackManager audioPlaybackManager) {
        this.routineManager = routineManager;
        this.modelProvider = modelProvider;
        this.audioPlaybackManager = audioPlaybackManager;
    }

    @Override // com.android.systemui.qs.bar.soundcraft.viewmodel.base.BaseViewModel
    public final void notifyChange() {
        throw null;
    }
}

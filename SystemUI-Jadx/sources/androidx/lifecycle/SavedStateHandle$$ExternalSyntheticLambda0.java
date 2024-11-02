package androidx.lifecycle;

import android.os.Bundle;
import androidx.savedstate.SavedStateRegistry;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class SavedStateHandle$$ExternalSyntheticLambda0 implements SavedStateRegistry.SavedStateProvider {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SavedStateHandle f$0;

    public /* synthetic */ SavedStateHandle$$ExternalSyntheticLambda0(SavedStateHandle savedStateHandle, int i) {
        this.$r8$classId = i;
        this.f$0 = savedStateHandle;
    }

    @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
    public final Bundle saveState() {
        int i = this.$r8$classId;
        SavedStateHandle savedStateHandle = this.f$0;
        switch (i) {
            case 0:
                return SavedStateHandle.$r8$lambda$aMir0GWwzPQviKVGE0DPm0kayew(savedStateHandle);
            default:
                return SavedStateHandle.$r8$lambda$aMir0GWwzPQviKVGE0DPm0kayew(savedStateHandle);
        }
    }
}

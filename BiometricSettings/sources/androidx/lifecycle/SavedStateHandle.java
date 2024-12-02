package androidx.lifecycle;

import android.os.Binder;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.savedstate.SavedStateRegistry;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlinx.coroutines.flow.MutableStateFlow;

/* compiled from: SavedStateHandle.kt */
/* loaded from: classes.dex */
public final class SavedStateHandle {
    private static final Class<? extends Object>[] ACCEPTABLE_CLASSES = {Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Size.class, SizeF.class};
    private final Map<String, Object> regular = new LinkedHashMap();
    private final Map<String, SavedStateRegistry.SavedStateProvider> savedStateProviders = new LinkedHashMap();
    private final Map<String, Object> liveDatas = new LinkedHashMap();
    private final Map<String, MutableStateFlow<Object>> flows = new LinkedHashMap();
    private final SavedStateHandle$$ExternalSyntheticLambda0 savedStateProvider = new SavedStateHandle$$ExternalSyntheticLambda0(this);

    /* JADX WARN: Removed duplicated region for block: B:15:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.os.Bundle $r8$lambda$aMir0GWwzPQviKVGE0DPm0kayew(androidx.lifecycle.SavedStateHandle r11) {
        /*
            Method dump skipped, instructions count: 694
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.SavedStateHandle.$r8$lambda$aMir0GWwzPQviKVGE0DPm0kayew(androidx.lifecycle.SavedStateHandle):android.os.Bundle");
    }

    public final SavedStateHandle$$ExternalSyntheticLambda0 savedStateProvider() {
        return this.savedStateProvider;
    }
}

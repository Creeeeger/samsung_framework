package kotlin.collections;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Maps.kt */
/* loaded from: classes.dex */
public class MapsKt__MapsKt extends MapsKt__MapsJVMKt {
    @NotNull
    public static <K, V> Map<K, V> emptyMap() {
        return EmptyMap.INSTANCE;
    }

    @NotNull
    public static <K, V> Map<K, V> toMap(@NotNull Map<? extends K, ? extends V> map) {
        Map<K, V> emptyMap;
        Map<K, V> mutableMap;
        Intrinsics.checkNotNullParameter(map, "<this>");
        int size = map.size();
        if (size == 0) {
            emptyMap = emptyMap();
            return emptyMap;
        }
        if (size == 1) {
            return MapsKt__MapsJVMKt.toSingletonMap(map);
        }
        mutableMap = toMutableMap(map);
        return mutableMap;
    }

    @NotNull
    public static <K, V> Map<K, V> toMutableMap(@NotNull Map<? extends K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        return new LinkedHashMap(map);
    }
}

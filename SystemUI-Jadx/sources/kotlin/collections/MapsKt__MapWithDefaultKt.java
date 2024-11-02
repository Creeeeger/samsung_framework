package kotlin.collections;

import java.util.Map;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class MapsKt__MapWithDefaultKt {
    public static final Map withDefault(Map map, Function1 function1) {
        if (map instanceof MapWithDefaultImpl) {
            return withDefault(((MapWithDefaultImpl) map).map, function1);
        }
        return new MapWithDefaultImpl(map, function1);
    }
}

package com.android.systemui.navigationbar.util;

import android.util.Log;
import com.android.systemui.navigationbar.bandaid.Band;
import com.android.systemui.navigationbar.store.EventTypeFactory;
import com.android.systemui.navigationbar.store.NavBarStateManager;
import com.android.systemui.navigationbar.store.NavBarStore;
import com.android.systemui.navigationbar.store.NavBarStoreAction;
import com.android.systemui.navigationbar.store.NavBarStoreImpl;
import com.google.gson.Gson;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.List;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NavBarReflectUtil {
    public static final NavBarReflectUtil INSTANCE = new NavBarReflectUtil();

    private NavBarReflectUtil() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006a, code lost:
    
        if (r0.equals("string") == false) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void assign(java.lang.reflect.Field r3, java.lang.Object r4, java.lang.String r5) {
        /*
            r0 = 1
            r3.setAccessible(r0)
            java.lang.Class r0 = r3.getType()
            java.lang.String r0 = r0.getName()
            java.util.Locale r1 = java.util.Locale.ROOT
            java.lang.String r0 = r0.toLowerCase(r1)
            int r2 = r0.hashCode()
            switch(r2) {
                case -1325958191: goto L6d;
                case -891985903: goto L63;
                case 104431: goto L51;
                case 3327612: goto L3f;
                case 64711720: goto L29;
                case 97526364: goto L1b;
                default: goto L19;
            }
        L19:
            goto L87
        L1b:
            java.lang.String r1 = "float"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L24
            goto L87
        L24:
            java.lang.Float r5 = kotlin.text.StringsKt__StringNumberConversionsJVMKt.toFloatOrNull(r5)
            goto L88
        L29:
            java.lang.String r2 = "boolean"
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L32
            goto L87
        L32:
            java.lang.String r5 = r5.toLowerCase(r1)
            boolean r5 = java.lang.Boolean.parseBoolean(r5)
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)
            goto L88
        L3f:
            java.lang.String r1 = "long"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L48
            goto L87
        L48:
            long r0 = java.lang.Long.parseLong(r5)
            java.lang.Long r5 = java.lang.Long.valueOf(r0)
            goto L88
        L51:
            java.lang.String r1 = "int"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L5a
            goto L87
        L5a:
            int r5 = java.lang.Integer.parseInt(r5)
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            goto L88
        L63:
            java.lang.String r1 = "string"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L88
            goto L87
        L6d:
            java.lang.String r1 = "double"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L76
            goto L87
        L76:
            kotlin.text.Regex r0 = kotlin.text.ScreenFloatValueRegEx.value     // Catch: java.lang.NumberFormatException -> L87
            boolean r0 = r0.matches(r5)     // Catch: java.lang.NumberFormatException -> L87
            if (r0 == 0) goto L87
            double r0 = java.lang.Double.parseDouble(r5)     // Catch: java.lang.NumberFormatException -> L87
            java.lang.Double r5 = java.lang.Double.valueOf(r0)     // Catch: java.lang.NumberFormatException -> L87
            goto L88
        L87:
            r5 = 0
        L88:
            r3.set(r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.util.NavBarReflectUtil.assign(java.lang.reflect.Field, java.lang.Object, java.lang.String):void");
    }

    public static final EventTypeFactory.EventType createFakeHandleEvent(String str, String str2) {
        try {
            return (EventTypeFactory.EventType) new Gson().fromJson(Class.forName("com.android.systemui.navigationbar.store.EventTypeFactory$EventType$".concat(str)), str2);
        } catch (Exception e) {
            Log.e("NavBarReflectUtil", "Failed to create fake handle event : " + e);
            e.printStackTrace();
            return null;
        }
    }

    public static final void runFakeStoreAction(NavBarStore navBarStore, String str, String str2, int i) {
        try {
            NavBarStoreAction.Action action = r1;
            NavBarStoreAction.Action action2 = new NavBarStoreAction.Action(null, null, null, null, false, 0.0f, null, false, 0.0f, 0, false, false, 0, false, null, null, false, false, null, 0.0f, 0.0f, 0, 4194303, null);
            Iterator it = StringsKt__StringsKt.split$default(str2, new String[]{","}, 0, 6).iterator();
            while (it.hasNext()) {
                List split$default = StringsKt__StringsKt.split$default((String) it.next(), new String[]{"="}, 0, 6);
                if (split$default.size() == 2) {
                    Field declaredField = NavBarStoreAction.Action.class.getDeclaredField((String) split$default.get(0));
                    declaredField.setAccessible(true);
                    NavBarReflectUtil navBarReflectUtil = INSTANCE;
                    String str3 = (String) split$default.get(1);
                    navBarReflectUtil.getClass();
                    NavBarStoreAction.Action action3 = action;
                    assign(declaredField, action3, str3);
                    action = action3;
                }
            }
            NavBarStoreAction navBarStoreAction = (NavBarStoreAction) Class.forName("com.android.systemui.navigationbar.store.NavBarStoreAction$" + str).getDeclaredConstructor(NavBarStoreAction.Action.class).newInstance(action);
            NavBarStoreImpl navBarStoreImpl = (NavBarStoreImpl) navBarStore;
            NavBarStateManager navStateManager = navBarStoreImpl.getNavStateManager(i);
            navBarStoreImpl.apply(new Band.Kit(new EventTypeFactory.EventType.OnFakeNavBarEventOccurred(false, 1, null), navStateManager, navStateManager.states, i), navBarStoreAction);
        } catch (Exception e) {
            Log.e("NavBarReflectUtil", "Failed to create fake store action : " + e);
            e.printStackTrace();
        }
    }

    public static final void updateFakeStatus(NavBarStore navBarStore, int i, List list) {
        NavBarStateManager.States states = ((NavBarStoreImpl) navBarStore).getNavStateManager(i).states;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            List split$default = StringsKt__StringsKt.split$default((String) it.next(), new String[]{"="}, 0, 6);
            if (split$default.size() == 2) {
                Field declaredField = NavBarStateManager.States.class.getDeclaredField((String) split$default.get(0));
                declaredField.setAccessible(true);
                String str = (String) split$default.get(1);
                INSTANCE.getClass();
                assign(declaredField, states, str);
            }
        }
    }
}

package com.android.systemui.people;

import android.app.people.ConversationStatus;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PeopleTileViewHelper$$ExternalSyntheticLambda3 implements Predicate {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                if (((ConversationStatus) obj).getAvailability() == 0) {
                    return true;
                }
                return false;
            case 1:
                if (((ConversationStatus) obj).getActivity() == 3) {
                    return true;
                }
                return false;
            default:
                if (((ConversationStatus) obj).getActivity() == 1) {
                    return true;
                }
                return false;
        }
    }
}

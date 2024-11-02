package com.android.systemui.statusbar.notification.collection.coordinator;

import com.android.systemui.statusbar.notification.collection.ListEntry;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
final /* synthetic */ class NotifHeaderCoordinator$extractAllRepresentativeEntries$1 extends FunctionReferenceImpl implements Function1 {
    public NotifHeaderCoordinator$extractAllRepresentativeEntries$1(Object obj) {
        super(1, obj, NotifHeaderCoordinator.class, "extractAllRepresentativeEntries", "extractAllRepresentativeEntries(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lkotlin/sequences/Sequence;", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Sequence invoke(ListEntry listEntry) {
        NotifHeaderCoordinator notifHeaderCoordinator = (NotifHeaderCoordinator) this.receiver;
        notifHeaderCoordinator.getClass();
        return new SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1(new NotifHeaderCoordinator$extractAllRepresentativeEntries$2(listEntry, notifHeaderCoordinator, null));
    }
}

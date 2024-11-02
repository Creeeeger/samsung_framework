.class public final synthetic Lcom/android/systemui/globalactions/features/CoverSupportStrategy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/globalactions/features/CoverSupportStrategy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/features/CoverSupportStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Boolean;

    .line 4
    .line 5
    check-cast p2, Ljava/lang/Integer;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->dismissDialog(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

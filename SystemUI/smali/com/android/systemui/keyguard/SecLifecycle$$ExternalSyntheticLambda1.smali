.class public final synthetic Lcom/android/systemui/keyguard/SecLifecycle$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/android/systemui/keyguard/SecLifecycle$$ExternalSyntheticLambda1;->f$0:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/systemui/keyguard/SecLifecycle$$ExternalSyntheticLambda1;->f$1:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/keyguard/SecLifecycle$$ExternalSyntheticLambda1;->f$0:I

    .line 2
    .line 3
    iget p0, p0, Lcom/android/systemui/keyguard/SecLifecycle$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    check-cast p1, Lcom/android/systemui/keyguard/SecLifecycle$Msg;

    .line 6
    .line 7
    iget v1, p1, Lcom/android/systemui/keyguard/SecLifecycle$Msg;->msg:I

    .line 8
    .line 9
    if-ne v1, v0, :cond_0

    .line 10
    .line 11
    iget p1, p1, Lcom/android/systemui/keyguard/SecLifecycle$Msg;->reason:I

    .line 12
    .line 13
    if-ne p1, p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

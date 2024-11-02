.class public final synthetic Lcom/android/systemui/util/CoverUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/cover/CoverState;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/util/CoverUtil$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/cover/CoverState;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/CoverUtil$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/cover/CoverState;

    .line 2
    .line 3
    check-cast p1, Lcom/android/systemui/basic/util/CoverUtilWrapper$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mListeners:Ljava/util/Map;

    .line 8
    .line 9
    check-cast v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iput-object p0, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    xor-int/2addr v1, v2

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    iget-object v3, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/16 v4, 0xf

    .line 39
    .line 40
    if-eq v3, v4, :cond_2

    .line 41
    .line 42
    iget-object v3, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/16 v4, 0x10

    .line 49
    .line 50
    if-eq v3, v4, :cond_2

    .line 51
    .line 52
    iget-object v3, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    const/16 v4, 0x8

    .line 59
    .line 60
    if-ne v3, v4, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/4 v2, 0x0

    .line 64
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 65
    .line 66
    iget-object v2, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mActionBeforeSecureConfirm:Ljava/lang/Runnable;

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 71
    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    iput-object v2, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mActionBeforeSecureConfirm:Ljava/lang/Runnable;

    .line 75
    .line 76
    :cond_3
    new-instance p1, Lcom/android/systemui/basic/util/CoverUtilWrapper$$ExternalSyntheticLambda1;

    .line 77
    .line 78
    invoke-direct {p1, v1, p0}, Lcom/android/systemui/basic/util/CoverUtilWrapper$$ExternalSyntheticLambda1;-><init>(ZI)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 82
    .line 83
    .line 84
    :goto_1
    return-void
.end method

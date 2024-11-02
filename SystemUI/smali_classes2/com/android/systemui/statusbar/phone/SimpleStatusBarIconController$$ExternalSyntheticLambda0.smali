.class public final synthetic Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;

    .line 2
    .line 3
    check-cast p2, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;

    .line 4
    .line 5
    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;->isCallChipNotif:Z

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iget-wide v2, p1, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;->when:J

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    cmp-long p0, v2, v0

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-boolean p0, p2, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;->isCallChipNotif:Z

    .line 19
    .line 20
    iget-wide p1, p2, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;->when:J

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    cmp-long p0, p1, v0

    .line 25
    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    cmp-long p0, v2, p1

    .line 30
    .line 31
    if-gez p0, :cond_2

    .line 32
    .line 33
    :goto_0
    const/4 p0, 0x1

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    if-lez p0, :cond_3

    .line 36
    .line 37
    :goto_1
    const/4 p0, -0x1

    .line 38
    goto :goto_2

    .line 39
    :cond_3
    const/4 p0, 0x0

    .line 40
    :goto_2
    return p0
.end method

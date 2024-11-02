.class public final synthetic Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/IndicationEventType;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/IndicationEventType;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_3

    .line 11
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 12
    .line 13
    check-cast p1, Lcom/android/systemui/statusbar/IndicationItem;

    .line 14
    .line 15
    iget-object v0, p1, Lcom/android/systemui/statusbar/IndicationItem;->mEventType:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 16
    .line 17
    if-ne v0, p0, :cond_1

    .line 18
    .line 19
    iget-wide p0, p1, Lcom/android/systemui/statusbar/IndicationItem;->mDurationTime:J

    .line 20
    .line 21
    cmp-long p0, p0, v1

    .line 22
    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    move p0, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move p0, v4

    .line 28
    :goto_0
    if-eqz p0, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v3, v4

    .line 32
    :goto_1
    return v3

    .line 33
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 34
    .line 35
    check-cast p1, Lcom/android/systemui/statusbar/IndicationItem;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/systemui/statusbar/IndicationItem;->mEventType:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 38
    .line 39
    if-ne p1, p0, :cond_2

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move v3, v4

    .line 43
    :goto_2
    return v3

    .line 44
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 45
    .line 46
    check-cast p1, Lcom/android/systemui/statusbar/IndicationItem;

    .line 47
    .line 48
    iget-object v0, p1, Lcom/android/systemui/statusbar/IndicationItem;->mEventType:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 49
    .line 50
    if-ne v0, p0, :cond_4

    .line 51
    .line 52
    iget-wide p0, p1, Lcom/android/systemui/statusbar/IndicationItem;->mDurationTime:J

    .line 53
    .line 54
    cmp-long p0, p0, v1

    .line 55
    .line 56
    if-nez p0, :cond_3

    .line 57
    .line 58
    move p0, v3

    .line 59
    goto :goto_4

    .line 60
    :cond_3
    move p0, v4

    .line 61
    :goto_4
    if-eqz p0, :cond_4

    .line 62
    .line 63
    goto :goto_5

    .line 64
    :cond_4
    move v3, v4

    .line 65
    :goto_5
    return v3

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

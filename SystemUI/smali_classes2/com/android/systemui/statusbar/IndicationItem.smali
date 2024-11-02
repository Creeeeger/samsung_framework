.class public final Lcom/android/systemui/statusbar/IndicationItem;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final mDurationTime:J

.field public final mEventType:Lcom/android/systemui/statusbar/IndicationEventType;

.field public final mIsAnimation:Z

.field public final mItemId:I

.field public final mPriority:I

.field public final mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/IndicationItem;->mItemId:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/IndicationItem;->mEventType:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/IndicationEventType;->getPriority()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/android/systemui/statusbar/IndicationItem;->mPriority:I

    .line 13
    .line 14
    iput-object p3, p0, Lcom/android/systemui/statusbar/IndicationItem;->mText:Ljava/lang/CharSequence;

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/android/systemui/statusbar/IndicationItem;->mIsAnimation:Z

    .line 17
    .line 18
    iput-wide p5, p0, Lcom/android/systemui/statusbar/IndicationItem;->mDurationTime:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/IndicationItem;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/systemui/statusbar/IndicationItem;->mPriority:I

    .line 4
    .line 5
    iget v1, p1, Lcom/android/systemui/statusbar/IndicationItem;->mPriority:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget p1, p1, Lcom/android/systemui/statusbar/IndicationItem;->mItemId:I

    .line 10
    .line 11
    iget p0, p0, Lcom/android/systemui/statusbar/IndicationItem;->mItemId:I

    .line 12
    .line 13
    sub-int/2addr p1, p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sub-int p1, v1, v0

    .line 16
    .line 17
    :goto_0
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/systemui/statusbar/IndicationItem;->mItemId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string/jumbo v1, "|ty="

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/systemui/statusbar/IndicationItem;->mEventType:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string/jumbo v1, "|pr="

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lcom/android/systemui/statusbar/IndicationItem;->mPriority:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string/jumbo v1, "|txt="

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/systemui/statusbar/IndicationItem;->mText:Ljava/lang/CharSequence;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string/jumbo v1, "|ti=duration="

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-wide v1, p0, Lcom/android/systemui/statusbar/IndicationItem;->mDurationTime:J

    .line 53
    .line 54
    const-wide/16 v3, -0x1

    .line 55
    .line 56
    cmp-long v3, v1, v3

    .line 57
    .line 58
    if-nez v3, :cond_0

    .line 59
    .line 60
    const/4 v3, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 v3, 0x0

    .line 63
    :goto_0
    if-eqz v3, :cond_1

    .line 64
    .line 65
    const-string v1, "PERSISTENT"

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string/jumbo v1, "|an="

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/IndicationItem;->mIsAnimation:Z

    .line 82
    .line 83
    const-string v1, "]"

    .line 84
    .line 85
    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method

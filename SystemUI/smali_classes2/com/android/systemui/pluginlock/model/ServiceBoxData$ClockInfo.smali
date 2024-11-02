.class public final Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field mClockScale:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock_scale"
    .end annotation
.end field

.field mClockScaleLand:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock_scale_land"
    .end annotation
.end field

.field mClockType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock_type"
    .end annotation
.end field

.field mGravity:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gravity"
    .end annotation
.end field

.field mGravityLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gravity_land"
    .end annotation
.end field

.field mPaddingEnd:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock_padding_end"
    .end annotation
.end field

.field mPaddingEndLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock_padding_end_land"
    .end annotation
.end field

.field mPaddingStart:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock_padding_start"
    .end annotation
.end field

.field mPaddingStartLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock_padding_start_land"
    .end annotation
.end field

.field mRecoverType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recover_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/model/ServiceBoxData;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mRecoverType:Ljava/lang/Integer;

    .line 10
    .line 11
    const/high16 p1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    iput p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mClockScale:F

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mPaddingStart:Ljava/lang/Integer;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mPaddingEnd:Ljava/lang/Integer;

    .line 23
    .line 24
    iput p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mClockScaleLand:F

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mPaddingStartLand:Ljava/lang/Integer;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mPaddingEndLand:Ljava/lang/Integer;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getClockType()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mClockType:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, -0x1

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getGravity()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mGravity:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, -0x1

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getGravityLand()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mGravityLand:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, -0x1

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getPaddingEnd()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mPaddingEnd:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, -0x1

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getPaddingEndLand()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mPaddingEndLand:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, -0x1

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getPaddingStart()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mPaddingStart:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, -0x1

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getPaddingStartLand()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mPaddingStartLand:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, -0x1

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getRecoverType()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mRecoverType:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x1

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getScale()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mClockScale:F

    .line 2
    .line 3
    return p0
.end method

.method public final getScaleLand()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mClockScaleLand:F

    .line 2
    .line 3
    return p0
.end method

.method public final setClockType(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mClockType:Ljava/lang/Integer;

    .line 6
    .line 7
    return-void
.end method

.method public final setGravity(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mGravity:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setGravityLand(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mGravityLand:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setPaddingEnd(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mPaddingEnd:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setPaddingEndLand(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mPaddingEndLand:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setPaddingStart(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mPaddingStart:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setPaddingStartLand(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mPaddingStartLand:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mClockScale:F

    .line 2
    .line 3
    return-void
.end method

.method public final setScaleLand(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mClockScaleLand:F

    .line 2
    .line 3
    return-void
.end method

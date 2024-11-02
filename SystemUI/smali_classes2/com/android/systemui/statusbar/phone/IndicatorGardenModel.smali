.class public final Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public cameraTopMargin:I

.field public hasCameraTopMargin:Z

.field public maxWidthCenterContainer:I

.field public maxWidthLeftContainer:I

.field public maxWidthRightContainer:I

.field public paddingLeft:I

.field public paddingRight:I

.field public totalHeight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthLeftContainer:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthCenterContainer:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthRightContainer:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->hasCameraTopMargin:Z

    .line 4
    .line 5
    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMargin:I

    .line 6
    .line 7
    iget v3, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingLeft:I

    .line 8
    .line 9
    iget v4, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingRight:I

    .line 10
    .line 11
    iget v5, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthLeftContainer:I

    .line 12
    .line 13
    iget v6, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthCenterContainer:I

    .line 14
    .line 15
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthRightContainer:I

    .line 16
    .line 17
    const-string v7, "height="

    .line 18
    .line 19
    const-string v8, " hasCameraTopMargin="

    .line 20
    .line 21
    const-string v9, " cameraTopMargin="

    .line 22
    .line 23
    invoke-static {v7, v0, v8, v1, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string/jumbo v1, "paddingLeft="

    .line 28
    .line 29
    .line 30
    const-string v7, " paddingRight="

    .line 31
    .line 32
    invoke-static {v0, v2, v1, v3, v7}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v1, " maxWidthLeftContainer="

    .line 36
    .line 37
    const-string v2, " maxWidthCenterContainer="

    .line 38
    .line 39
    invoke-static {v0, v4, v1, v5, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, " maxWidthRightContainer="

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

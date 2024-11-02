.class public final Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public isNeedLightOnWhenTurnOveredLcdOff:Z

.field public isNeedLightOnWhenTurnOveredLcdOn:Z

.field public isNeedLightOnWhenTurnRightedLcdOff:Z

.field public isNeedLightOnWhenTurnRightedLcdOn:Z

.field public isNeedToKeepWhenLcdOff:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedToKeepWhenLcdOff:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnOveredLcdOn:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnOveredLcdOff:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnRightedLcdOn:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnRightedLcdOff:Z

    .line 14
    .line 15
    return-void
.end method

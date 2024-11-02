.class public final Lcom/android/systemui/subscreen/ScreenRecordingStateProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSTile$Callback;


# instance fields
.field public final mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

.field public mTileState:Lcom/android/systemui/plugins/qs/QSTile$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/log/SecPanelLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/subscreen/ScreenRecordingStateProvider;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/systemui/subscreen/ScreenRecordingStateProvider;->mTileState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "ScreenRecordingStateChanged active: "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-ne p1, v1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p0, p0, Lcom/android/systemui/subscreen/ScreenRecordingStateProvider;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 26
    .line 27
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

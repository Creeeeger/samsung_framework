.class public final Lcom/android/systemui/subscreen/SubScreenQSEventHandler$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/model/SysUiState$SysUiStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$4;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSystemUiStateChanged(J)V
    .locals 2

    .line 1
    const-wide v0, 0x800000000L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    and-long/2addr p1, v0

    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmp-long p1, p1, v0

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$4;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 17
    .line 18
    invoke-static {p0, p1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fputmIsNaviBarShowing(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmPanelLogger(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Lcom/android/systemui/log/SecPanelLogger;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v0, "mIsNaviBarShowing: "

    .line 28
    .line 29
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmIsNaviBarShowing(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p1, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

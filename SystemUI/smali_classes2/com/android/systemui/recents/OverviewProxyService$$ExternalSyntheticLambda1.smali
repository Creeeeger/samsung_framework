.class public final synthetic Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStateChanged(ZZZZZZZ)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p6, 0x1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    move v1, p6

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v0

    .line 15
    :goto_0
    const-wide/16 v2, 0x40

    .line 16
    .line 17
    iget-object v4, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 18
    .line 19
    invoke-virtual {v4, v2, v3, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move p6, v0

    .line 28
    :goto_1
    const-wide/16 p1, 0x200

    .line 29
    .line 30
    invoke-virtual {v4, p1, p2, p6}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    .line 31
    .line 32
    .line 33
    const-wide p1, 0x80000000L

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    .line 39
    .line 40
    .line 41
    const-wide/16 p1, 0x8

    .line 42
    .line 43
    invoke-virtual {v4, p1, p2, p4}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    .line 44
    .line 45
    .line 46
    const-wide/32 p1, 0x200000

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, p1, p2, p5}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    .line 50
    .line 51
    .line 52
    const-wide/32 p1, 0x8000000

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, p1, p2, p7}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    invoke-virtual {v4, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

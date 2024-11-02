.class public final Lcom/android/systemui/qs/cinema/QSCinemaProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mCurrentLayoutDirection:I

.field public mCurrentOrientation:I

.field public final mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

.field public final mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

.field public final mQs:Lcom/android/systemui/plugins/qs/QS;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/SecQuickQSPanel;Lcom/android/systemui/qs/SecQSPanelController;Lcom/android/systemui/qs/SecQuickQSPanelController;Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x0

    .line 5
    iput p3, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mCurrentOrientation:I

    .line 6
    .line 7
    const/4 p3, -0x1

    .line 8
    iput p3, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mCurrentLayoutDirection:I

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 18
    .line 19
    iput-object p4, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 20
    .line 21
    iput-object p6, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

    .line 22
    .line 23
    return-void
.end method

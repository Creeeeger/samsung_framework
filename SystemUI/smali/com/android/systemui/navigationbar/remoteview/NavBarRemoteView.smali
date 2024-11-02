.class public final Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final priority:I

.field public final remoteViews:Landroid/widget/RemoteViews;

.field public final requestClass:Ljava/lang/String;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->requestClass:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->remoteViews:Landroid/widget/RemoteViews;

    .line 7
    .line 8
    iput p4, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->priority:I

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p3, p1, p2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->view:Landroid/view/View;

    .line 16
    .line 17
    new-instance p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    .line 18
    .line 19
    const p3, 0x7f0703f1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    const/4 p1, -0x1

    .line 31
    invoke-direct {p0, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

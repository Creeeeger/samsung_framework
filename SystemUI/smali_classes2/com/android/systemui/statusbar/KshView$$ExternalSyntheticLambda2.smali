.class public final synthetic Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/KshView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KshView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/KshView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/KshView;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/16 p1, 0x15

    .line 7
    .line 8
    const/4 p3, 0x1

    .line 9
    if-eq p2, p1, :cond_0

    .line 10
    .line 11
    const/16 p1, 0x16

    .line 12
    .line 13
    if-ne p2, p1, :cond_1

    .line 14
    .line 15
    :cond_0
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KshView;->mHardKeyScrolled:Z

    .line 16
    .line 17
    :cond_1
    const/16 p1, 0x3d

    .line 18
    .line 19
    if-ne p2, p1, :cond_2

    .line 20
    .line 21
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KshView;->mTabKeyIn:Z

    .line 22
    .line 23
    :cond_2
    const/4 p0, 0x0

    .line 24
    return p0
.end method

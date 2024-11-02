.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$apply$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $navBar:Lcom/android/systemui/navigationbar/NavigationBarView;

.field public final synthetic $vis:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$apply$1;->$navBar:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$apply$1;->$vis:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$apply$1;->$navBar:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$apply$1;->$vis:I

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method

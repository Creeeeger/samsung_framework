.class public final Lcom/android/systemui/qs/QSContainerImplController$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSContainerImplController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSContainerImplController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImplController$4;->this$0:Lcom/android/systemui/qs/QSContainerImplController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImplController$4;->this$0:Lcom/android/systemui/qs/QSContainerImplController;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    check-cast p1, Lcom/android/systemui/qs/QSContainerImpl;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateTabletResources(Lcom/android/systemui/shade/ShadeHeaderController;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

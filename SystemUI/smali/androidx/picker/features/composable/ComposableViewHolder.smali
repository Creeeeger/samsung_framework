.class public abstract Landroidx/picker/features/composable/ComposableViewHolder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private final frameView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/picker/features/composable/ComposableViewHolder;->frameView:Landroid/view/View;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bindAdapter(Landroidx/picker/adapter/AbsAdapter;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract bindData(Landroidx/picker/model/viewdata/ViewData;)V
.end method

.method public final getFrameView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/features/composable/ComposableViewHolder;->frameView:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public onBind(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onViewRecycled(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

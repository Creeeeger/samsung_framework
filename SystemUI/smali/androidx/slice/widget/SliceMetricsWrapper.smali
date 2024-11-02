.class public final Landroidx/slice/widget/SliceMetricsWrapper;
.super Landroidx/slice/widget/SliceMetrics;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mSliceMetrics:Landroid/app/slice/SliceMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/slice/widget/SliceMetrics;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/app/slice/SliceMetrics;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, Landroid/app/slice/SliceMetrics;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/slice/widget/SliceMetricsWrapper;->mSliceMetrics:Landroid/app/slice/SliceMetrics;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final logHidden()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/slice/widget/SliceMetricsWrapper;->mSliceMetrics:Landroid/app/slice/SliceMetrics;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/slice/SliceMetrics;->logHidden()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final logVisible()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/slice/widget/SliceMetricsWrapper;->mSliceMetrics:Landroid/app/slice/SliceMetrics;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/slice/SliceMetrics;->logVisible()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.class public final Lcom/google/android/material/navigation/NavigationBarMenuView$3;
.super Lcom/google/android/material/navigation/NavigationBarItemView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic val$layoutStyle:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigation/NavigationBarMenuView;Landroid/content/Context;II)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView$3;->val$layoutStyle:I

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/navigation/NavigationBarItemView;-><init>(Landroid/content/Context;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getItemLayoutResId()I
    .locals 1

    .line 1
    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView$3;->val$layoutStyle:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    const p0, 0x7f0d03b1

    .line 7
    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    const p0, 0x7f0d03b2

    .line 11
    .line 12
    .line 13
    return p0
.end method

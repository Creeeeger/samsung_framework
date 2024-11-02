.class public final Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mWindowState:I

.field public final mWindowStateDisplayId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavBarHelper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Lcom/android/systemui/navigationbar/NavBarHelper;->mWindowStateDisplayId:I

    iput v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;->mWindowStateDisplayId:I

    .line 3
    iget p1, p1, Lcom/android/systemui/navigationbar/NavBarHelper;->mWindowState:I

    iput p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;->mWindowState:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/navigationbar/NavBarHelper;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p2, p0, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;->mWindowStateDisplayId:I

    .line 6
    iget-object p1, p1, Lcom/android/systemui/navigationbar/NavBarHelper;->mWindowStateDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;->mWindowState:I

    return-void
.end method

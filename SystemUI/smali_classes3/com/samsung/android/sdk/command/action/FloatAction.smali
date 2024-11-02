.class public final Lcom/samsung/android/sdk/command/action/FloatAction;
.super Lcom/samsung/android/sdk/command/action/CommandAction;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mNewValue:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    const-string v0, "float"

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/samsung/android/sdk/command/action/FloatAction;->mNewValue:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_new_value"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/command/action/FloatAction;->mNewValue:F

    return-void
.end method


# virtual methods
.method public final getActionType()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public final getDataBundle()Landroid/os/Bundle;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "key_new_value"

    .line 6
    .line 7
    iget p0, p0, Lcom/samsung/android/sdk/command/action/FloatAction;->mNewValue:F

    .line 8
    .line 9
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

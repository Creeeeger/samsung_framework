.class public final Lcom/samsung/android/sdk/command/template/ToggleTemplate;
.super Lcom/samsung/android/sdk/command/template/CommandTemplate;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mIsChecked:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/template/CommandTemplate;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_new_value"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/command/template/ToggleTemplate;->mIsChecked:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const-string v0, "toggle"

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;-><init>(Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/sdk/command/template/ToggleTemplate;->mIsChecked:Z

    return-void
.end method


# virtual methods
.method public final getDataBundle()Landroid/os/Bundle;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->getDataBundle()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "key_new_value"

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/samsung/android/sdk/command/template/ToggleTemplate;->mIsChecked:Z

    .line 8
    .line 9
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getTemplateType()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

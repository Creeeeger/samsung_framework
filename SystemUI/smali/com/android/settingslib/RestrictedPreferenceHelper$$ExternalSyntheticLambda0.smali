.class public final synthetic Lcom/android/settingslib/RestrictedPreferenceHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/RestrictedPreferenceHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/RestrictedPreferenceHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const v0, 0x7f1304b2

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

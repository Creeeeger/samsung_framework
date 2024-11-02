.class public interface abstract Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/IntentButtonProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IntentButton"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;
    }
.end annotation


# virtual methods
.method public abstract getIcon()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;
.end method

.method public abstract getIntent()Landroid/content/Intent;
.end method

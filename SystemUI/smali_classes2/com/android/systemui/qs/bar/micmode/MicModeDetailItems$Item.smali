.class public abstract Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public ctv:Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getLoggingId()Ljava/lang/String;
.end method

.method public abstract getLoggingValue()Ljava/lang/String;
.end method

.method public abstract getMicMode()I
.end method

.method public abstract getText()Ljava/lang/String;
.end method

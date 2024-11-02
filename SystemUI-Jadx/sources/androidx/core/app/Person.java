package androidx.core.app;

import android.app.Person;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Person {
    public final IconCompat mIcon;
    public final boolean mIsBot;
    public final boolean mIsImportant;
    public final String mKey;
    public final CharSequence mName;
    public final String mUri;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Builder {
        public IconCompat mIcon;
        public boolean mIsBot;
        public boolean mIsImportant;
        public String mKey;
        public CharSequence mName;
        public String mUri;

        public Builder(Person person) {
            this.mName = person.mName;
            this.mIcon = person.mIcon;
            this.mUri = person.mUri;
            this.mKey = person.mKey;
            this.mIsBot = person.mIsBot;
            this.mIsImportant = person.mIsImportant;
        }
    }

    public Person(Builder builder) {
        this.mName = builder.mName;
        this.mIcon = builder.mIcon;
        this.mUri = builder.mUri;
        this.mKey = builder.mKey;
        this.mIsBot = builder.mIsBot;
        this.mIsImportant = builder.mIsImportant;
    }

    public static Person fromAndroidPerson(android.app.Person person) {
        IconCompat iconCompat;
        Builder builder = new Builder();
        builder.mName = person.getName();
        if (person.getIcon() != null) {
            iconCompat = IconCompat.createFromIcon(person.getIcon());
        } else {
            iconCompat = null;
        }
        builder.mIcon = iconCompat;
        builder.mUri = person.getUri();
        builder.mKey = person.getKey();
        builder.mIsBot = person.isBot();
        builder.mIsImportant = person.isImportant();
        return new Person(builder);
    }

    public static Person fromBundle(Bundle bundle) {
        IconCompat iconCompat;
        Bundle bundle2 = bundle.getBundle("icon");
        Builder builder = new Builder();
        builder.mName = bundle.getCharSequence("name");
        if (bundle2 != null) {
            iconCompat = IconCompat.createFromBundle(bundle2);
        } else {
            iconCompat = null;
        }
        builder.mIcon = iconCompat;
        builder.mUri = bundle.getString("uri");
        builder.mKey = bundle.getString("key");
        builder.mIsBot = bundle.getBoolean("isBot");
        builder.mIsImportant = bundle.getBoolean("isImportant");
        return new Person(builder);
    }

    public final android.app.Person toAndroidPerson() {
        Icon icon;
        Person.Builder name = new Person.Builder().setName(this.mName);
        IconCompat iconCompat = this.mIcon;
        if (iconCompat != null) {
            icon = iconCompat.toIcon$1();
        } else {
            icon = null;
        }
        return name.setIcon(icon).setUri(this.mUri).setKey(this.mKey).setBot(this.mIsBot).setImportant(this.mIsImportant).build();
    }
}

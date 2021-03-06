
package WTSI::DNAP::Warehouse::Schema::Result::CgapRelease;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

WTSI::DNAP::Warehouse::Schema::Result::CgapRelease

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components('InflateColumn::DateTime');

=head1 TABLE: C<cgap_release>

=cut

__PACKAGE__->table('cgap_release');

=head1 ACCESSORS

=head2 cgap_release_tmp

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

Internal to this database id. Value can change.

=head2 barcode

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 cell_line_long_name

  data_type: 'varchar'
  is_nullable: 0
  size: 48

=head2 cell_line_uuid

  data_type: 'varchar'
  is_nullable: 0
  size: 38

=head2 goal

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 jobs

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 destination

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 user

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 release_date

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 cell_state

  data_type: 'varchar'
  is_nullable: 0
  size: 40

=head2 fate

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 passage_number

  data_type: 'integer'
  is_nullable: 0

=head2 project

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=cut

__PACKAGE__->add_columns(
  'cgap_release_tmp',
  {
    data_type => 'integer',
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  'barcode',
  { data_type => 'varchar', is_nullable => 0, size => 20 },
  'cell_line_long_name',
  { data_type => 'varchar', is_nullable => 0, size => 48 },
  'cell_line_uuid',
  { data_type => 'varchar', is_nullable => 0, size => 38 },
  'goal',
  { data_type => 'varchar', is_nullable => 0, size => 64 },
  'jobs',
  { data_type => 'varchar', is_nullable => 0, size => 64 },
  'destination',
  { data_type => 'varchar', is_nullable => 1, size => 64 },
  'user',
  { data_type => 'varchar', is_nullable => 0, size => 6 },
  'release_date',
  {
    data_type => 'timestamp',
    datetime_undef_if_invalid => 1,
    default_value => '0000-00-00 00:00:00',
    is_nullable => 0,
  },
  'cell_state',
  { data_type => 'varchar', is_nullable => 0, size => 40 },
  'fate',
  { data_type => 'varchar', is_nullable => 1, size => 40 },
  'passage_number',
  { data_type => 'integer', is_nullable => 0 },
  'project',
  { data_type => 'varchar', is_nullable => 1, size => 50 },
);

=head1 PRIMARY KEY

=over 4

=item * L</cgap_release_tmp>

=back

=cut

__PACKAGE__->set_primary_key('cgap_release_tmp');


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2019-09-27 10:30:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Ll81tS818RsG09XqwJg10w

our $VERSION = '0';

__PACKAGE__->meta->make_immutable;
1;

__END__

=head1 SYNOPSIS

=head1 DESCRIPTION

Result class definition in DBIx binding for the multi-lims warehouse database.

=head1 DIAGNOSTICS

=head1 CONFIGURATION AND ENVIRONMENT

=head1 SUBROUTINES/METHODS

=head1 DEPENDENCIES

=over

=item strict

=item warnings

=item Moose

=item MooseX::NonMoose

=item MooseX::MarkAsMethods

=item DBIx::Class::Core

=item DBIx::Class::InflateColumn::DateTime

=back

=head1 INCOMPATIBILITIES

=head1 BUGS AND LIMITATIONS

=head1 AUTHOR

Marina Gourtovaia E<lt>mg8@sanger.ac.ukE<gt>

=head1 LICENSE AND COPYRIGHT

Copyright (C) 2019 Genome Research Ltd.

This file is part of the ml_warehouse package L<https://github.com/wtsi-npg/ml_warehouse>.

NPG is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

=cut

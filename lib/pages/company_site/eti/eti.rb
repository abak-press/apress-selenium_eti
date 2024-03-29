# frozen_string_literal: true

module CompanySite
  module ETI
    def wait_saving
      status_bar = CompanySite::ETI::Table::StatusBar.new
      wait_until? { status_bar.status == 'Сохранение изменений...' }
      wait_until?(10) { status_bar.status == 'Все изменения сохранены' }
    end

    def wait_render_table
      table = CompanySite::ETI::Table.new
      wait_until?(10) { table.load_process_not_exists? }
    end
  end
end
